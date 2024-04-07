library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity digilent_jstk2 is
	generic (
		DELAY_US		: integer := 25;    -- Delay (in us) between two packets
		CLKFREQ		 	: integer := 100_000_000;  -- Frequency of the aclk signal (in Hz)
		SPI_SCLKFREQ 	: integer := 66_666 -- Frequency of the SPI SCLK clock signal (in Hz)
	);
	Port ( 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- Data going TO the SPI IP-Core (and so, to the JSTK2 module)
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in STD_LOGIC;

		-- Data coming FROM the SPI IP-Core (and so, from the JSTK2 module)
		-- There is no tready signal, so you must be always ready to accept and use the incoming data, or it will be lost!
		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);

		-- Joystick and button values read from the module
		jstk_x			: out std_logic_vector(9 downto 0);
		jstk_y			: out std_logic_vector(9 downto 0);
		btn_jstk		: out std_logic;
		btn_trigger		: out std_logic;

		-- LED color to send to the module
		led_r			: in std_logic_vector(7 downto 0);
		led_g			: in std_logic_vector(7 downto 0);
		led_b			: in std_logic_vector(7 downto 0)
			
	);
end digilent_jstk2;

architecture Behavioral of digilent_jstk2 is

	-- Code for the SetLEDRGB command, see the JSTK2 datasheet.
	--== CONSTANT
	constant CMDSETLEDRGB	: std_logic_vector(7 downto 0) := x"84";
	constant CMDGETPOSITION	: std_logic_vector(7 downto 0) := x"C0";
	-- constant DELAY_CYCLES	: INTEGER := DELAY_US * (CLKFREQ / 1_000_000) + CLKFREQ / SPI_SCLKFREQ;
	constant DELAY_CYCLES	: INTEGER := 500 * (CLKFREQ / 1_000_000);

	--== FSM 
	-- type state_type is (IDLE, GET_COORD, RD_COORD, SET_LED, WAIT_STD);
    -- signal next_state, curr_state: state_type;
	constant	IDLE 		: std_logic_vector(1 downto 0) := B"00";
	constant	GET_COORD 	: std_logic_vector(1 downto 0) := B"01";
	constant	SET_LED 	: std_logic_vector(1 downto 0) := B"10";
	constant	WAIT_STD 	: std_logic_vector(1 downto 0) := B"11";

    signal curr_state: std_logic_vector(1 downto 0);
    signal next_state: std_logic_vector(1 downto 0);

	--== SIGNALS 
	signal delay_cnt 	: INTEGER; 
	signal snd_byte_cnt	: unsigned(3 downto 0);
	signal rcv_byte_cnt	: unsigned(3 downto 0);

	signal rgb_set_req 	: STD_LOGIC := '0'; 
	signal rgb_set_clc 	: STD_LOGIC := '0'; 
	signal rgb_set	 	: std_logic_vector(23 downto 0); 
	signal rgb_set_d1	: std_logic_vector(23 downto 0); 

	signal rcv_done	 	: STD_LOGIC := '0'; 

	signal	jstk_x_reg			: std_logic_vector(9 downto 0);
	signal	jstk_y_reg			: std_logic_vector(9 downto 0);
	signal	btn_jstk_reg		: std_logic;
	signal	btn_trigger_reg		: std_logic;

begin
	-- --= dbg
	-- dbg_curr_std		<=	curr_state			;
	-- dbg_snd_byte_cnt	<=	snd_byte_cnt		;
	-- dbg_rcv_byte_cnt	<=	rcv_byte_cnt		;
	-- dbg_rgb_set_req 	<=	rgb_set_req 		;
	-- dbg_rgb_set_clc 	<=	rgb_set_clc 		;
	-- dbg_rcv_done	 	<=	rcv_done	 		;
	-- dbg_s_axis_tvalid	<=  s_axis_tvalid		;
	-- dbg_s_axis_tdata 	<=  s_axis_tdata 		;
	--=  Assignment
	ASS_ENG : process (led_r, led_g, led_b) is
	begin
		rgb_set	<=  led_r&led_g&led_b	;
	end process ASS_ENG;

	jstk_x		<= 	jstk_x_reg		;	
	jstk_y		<= 	jstk_y_reg		;	
	btn_jstk	<= 	btn_jstk_reg	;	
	btn_trigger	<= 	btn_trigger_reg	;

	--=  RGB register modify request
	REQ1_ENG : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				rgb_set_d1 <= (others => '0');
				rgb_set_req <= '1';
			else
				rgb_set_d1 <= rgb_set;
				if (rgb_set_d1/=rgb_set) then
					rgb_set_req <= '1';
				elsif (rgb_set_clc='1') then
					rgb_set_req <= '0';
				end if;
			end if;
		end if;
	end process REQ1_ENG;

	--=  Initialization state jump.
	--* According to control sequence
	STM_ENG : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				curr_state <= IDLE;
			else
				curr_state <= next_state;
			end if;
		end if;
	end process STM_ENG;

	JUMP_ENG : process(curr_state, rgb_set_req, snd_byte_cnt, rcv_done, delay_cnt) is
	begin
		case curr_state is
			when IDLE  =>
				if (rgb_set_req='1') then
					next_state <= SET_LED;
				else 
					next_state <= GET_COORD;
				end if;

			when SET_LED =>	
				if (snd_byte_cnt=5) then 
					next_state <= WAIT_STD;
				else
					next_state <= SET_LED;
				end if;

			when GET_COORD =>	
				if (snd_byte_cnt=5) then 
					next_state <= WAIT_STD; ---+++++!
				else
					next_state <= GET_COORD;
				end if;
			
			-- when RD_COORD =>	
			-- 	if (rcv_done='1') then 
			-- 		next_state <= WAIT_STD;
			-- 	else
			-- 		next_state <= RD_COORD;
			-- 	end if;
				
			when WAIT_STD =>	
				if  (delay_cnt=DELAY_CYCLES-1) then 
					next_state <= IDLE;
				else
					next_state <= WAIT_STD;
				end if;

			when others =>
				next_state <= IDLE;
		end case;
	end process JUMP_ENG;

	--= SEND COMMOND
	FSM_DATA_ENG : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				snd_byte_cnt   	<= (others => '0');
				m_axis_tdata  	<= (others => '0');
				m_axis_tvalid	<= '0';
				rgb_set_clc  	<= '0';
				delay_cnt  		<= 0;
			else
				case curr_state is
				when IDLE  =>
					m_axis_tdata  <= (others => '0');
					m_axis_tvalid <= '0';
					snd_byte_cnt  <= (others => '0');
					if (rgb_set_req='1') then
						m_axis_tdata    <= CMDSETLEDRGB;
						m_axis_tvalid 	<= '1';
						rgb_set_clc  	<= '1';
					else 
						m_axis_tdata    <= CMDGETPOSITION;
						m_axis_tvalid 	<= '1';
					end if;

				when SET_LED =>	
					rgb_set_clc  	<= '0';
					-- if  (m_axis_tready=1 and snd_byte_cnt=4) then
					if  (snd_byte_cnt=5) then
						snd_byte_cnt  <= (others => '0');
						m_axis_tdata  <= (others => '0');
						m_axis_tvalid <= '0';
					elsif (m_axis_tready='1') then 
						snd_byte_cnt <= snd_byte_cnt + 1;
						case snd_byte_cnt is
						when x"0" 	=> m_axis_tdata <= led_r;
						when x"1" 	=> m_axis_tdata <= led_g;
						when x"2" 	=> m_axis_tdata <= led_b;
						when others => m_axis_tdata <= (others => '0');
						end case;
					end if;

				when GET_COORD =>	
					if  (snd_byte_cnt=5) then
						snd_byte_cnt    <= (others => '0');
						m_axis_tdata    <= (others => '0');
						m_axis_tvalid   <= '0';
					elsif (m_axis_tready='1') then 
						snd_byte_cnt <= snd_byte_cnt + 1;
						m_axis_tdata <= (others => '0');
					end if;
					
				when WAIT_STD =>	
					if  (delay_cnt=DELAY_CYCLES-1) then 
						delay_cnt <= 0;
					else
						delay_cnt <= delay_cnt + 1;
					end if;

				when others =>
					snd_byte_cnt    <= (others => '0');
					m_axis_tdata  	<= (others => '0');
					m_axis_tvalid 	<= '0';
					rgb_set_clc  	<= '0';
					delay_cnt  		<= 0;
				end case;	
			end if;
		end if;
	end process FSM_DATA_ENG;

	--= READ DATA
	RECV_DATA : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				jstk_x_reg		<= (others => '0')	;
				jstk_y_reg		<= (others => '0')	;	
				btn_jstk_reg	<= '0'	;			
				btn_trigger_reg	<= '0'	;
				rcv_byte_cnt	<= (others => '0')	;	
				rcv_done		<= '0'	;		
			else
				case curr_state is
				when GET_COORD =>
					if  (rcv_byte_cnt=5) then
						rcv_byte_cnt      <= (others => '0');
						rcv_done		  <= '1';
					elsif (s_axis_tvalid='1') then 
						rcv_byte_cnt <= rcv_byte_cnt + 1;
						case rcv_byte_cnt is
						when x"0" 	=> jstk_x_reg(7 downto 0) <= s_axis_tdata;
						when x"1" 	=> jstk_x_reg(9 downto 8) <= s_axis_tdata(1 downto 0);
						when x"2" 	=> jstk_y_reg(7 downto 0) <= s_axis_tdata;
						when x"3" 	=> jstk_y_reg(9 downto 8) <= s_axis_tdata(1 downto 0);
						when x"4" 	=> btn_jstk_reg <= s_axis_tdata(0); btn_trigger_reg <= s_axis_tdata(1);
						when others => 
							jstk_x_reg		<=  jstk_x_reg		;	
							jstk_y_reg		<= 	jstk_y_reg		; 		
							btn_jstk_reg	<= 	btn_jstk_reg	;	
							btn_trigger_reg	<= 	btn_trigger_reg	; 
						end case;
					end if;
				when others =>
					rcv_done	<= '0'			;
					jstk_x_reg		<=  jstk_x_reg		;	
					jstk_y_reg		<= 	jstk_y_reg		; 		
					btn_jstk_reg	<= 	btn_jstk_reg	;	
					btn_trigger_reg	<= 	btn_trigger_reg	;  
				end case;	
			end if;
		end if;
	end process RECV_DATA;

end architecture;
