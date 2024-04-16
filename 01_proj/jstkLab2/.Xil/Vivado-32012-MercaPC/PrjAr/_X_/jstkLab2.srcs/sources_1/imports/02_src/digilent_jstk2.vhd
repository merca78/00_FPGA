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

	--== CONSTANT
	constant CMDSETLEDRGB	: std_logic_vector(7 downto 0) := x"84";
	constant CMDGETPOSITION	: std_logic_vector(7 downto 0) := x"C0";
	constant DELAY_CYCLES	: INTEGER := DELAY_US * (CLKFREQ / 1_000_000) + CLKFREQ / SPI_SCLKFREQ;

	--== STATE MACHINE 
	-- type state_type is (IDLE, GET_COORD, RD_COORD, SET_LED, WAIT_STD);
    -- signal next_state, curr_state: state_type;
	constant	IDLE 		: std_logic_vector(1 downto 0) := B"00";
	constant	GET_COORD 	: std_logic_vector(1 downto 0) := B"01";
	constant	SET_LED 	: std_logic_vector(1 downto 0) := B"10";
	constant	WAIT_STD 	: std_logic_vector(1 downto 0) := B"11";

    signal curr_state: std_logic_vector(1 downto 0);
    signal next_state: std_logic_vector(1 downto 0);

	--== SIGNALS 
	--* counter 
	signal 	delay_cnt 		: INTEGER; 
	signal 	snd_byte_cnt	: unsigned(3 downto 0);
	signal 	rcv_byte_cnt	: unsigned(3 downto 0);
	--* buffer
	signal	jstk_x_reg		: std_logic_vector(9 downto 0);
	signal	jstk_y_reg		: std_logic_vector(9 downto 0);
	signal	btn_jstk_reg	: std_logic;
	signal	btn_trigger_reg	: std_logic;
	--* Set Commands 
	signal 	rgb_set_req 	: STD_LOGIC := '0'; ---write rgb register request
	signal 	rgb_set_clc 	: STD_LOGIC := '0'; ---reset the request of setting rgb
	signal 	rgb_set	 		: std_logic_vector(23 downto 0); 
	signal 	rgb_set_d1		: std_logic_vector(23 downto 0); 
	--* Get Commands 
	signal 	rcv_done	 	: STD_LOGIC := '0'; 

begin
	
	--=========  Assignment
	-- ASS_ENG : process (led_r, led_g, led_b) is
	-- begin
	-- 	rgb_set	<=  led_r&led_g&led_b	;
	-- end process ASS_ENG;
	jstk_x		<= 	jstk_x_reg			;	
	jstk_y		<= 	jstk_y_reg			;	
	btn_jstk	<= 	btn_jstk_reg		;	
	btn_trigger	<= 	btn_trigger_reg		;
	rgb_set		<=  led_r&led_g&led_b	;

	--=========  RGB register modify request
	--* if rgb data change, rgb set request(rgb_set_req) set '1'
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

	--=========  Initialization state jump
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
			--* if rgb data change, state jump to set led command
			--* else jump to get position state
			when IDLE  =>
				if (rgb_set_req='1') then
					next_state <= SET_LED;
				else 
					next_state <= GET_COORD;
				end if;

			--* After the command SET LED RGB is sent, it transitions to the waiting state
			when SET_LED =>	
				if (snd_byte_cnt=5) then 
					next_state <= WAIT_STD;
				else
					next_state <= SET_LED;
				end if;

			--* After the command GET POSITION is sent, it transitions to the waiting state
			when GET_COORD =>	
				if (snd_byte_cnt=5) then 
					next_state <= WAIT_STD; 
				else
					next_state <= GET_COORD;
				end if;
				
			--* SPI Timing Requirements
			--* at least 25 μS is required before users may bring the Chip Select line low again to initiate another communication session
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

	--========= SEND COMMOND TO JSTK
	--* To both set and get state in state machine, we need to send commands to jstk. We should handle the following parameter:
	--* snd_byte_cnt	: 	increase every time when the data is prepared and m_axi is ready, reset in IDLE stage
	--* rgb_set_clc		: 	to reset the rgb set request
	--* delay_cnt		: 	when enter the waiting state, start counting
	--* m_axis_tdata	:	determine what command to send in the IDLE state,, With the standard 5 byte protocol
	--* m_axis_tvalid	:	sync with the status of m_axis_tdata
	FSM_DATA_ENG : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				snd_byte_cnt   	<= (others => '0');
				m_axis_tdata  	<= (others => '0');
				m_axis_tvalid	<= '0';
				rgb_set_clc  	<= '0';
				delay_cnt  		<=  0 ;
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

	--========= READ FROM JSTK
	--* Only in GET_COORD state do we need to read information from SPI.
	--* jstk_x_reg, jstk_y_reg, btn_jstk_reg, btn_trigger_reg: These are buffer registers of received data, It is worth noting that the xy coordinates are 10bits data, so the data passed to the axis needs to be reorganized.
	--* rcv_byte_cnt: Judge by s_axis_tvalid
	--* rcv_done	: When 5 bytes datas are received
	RECV_DATA : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				jstk_x_reg		<= (others => '0')	;
				jstk_y_reg		<= (others => '0')	;	
				rcv_byte_cnt	<= (others => '0')	;	
				rcv_done		<= '0'	;		
				btn_jstk_reg	<= '0'	;			
				btn_trigger_reg	<= '0'	;
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

	--========= dbg
	-- dbg_curr_std			<=	curr_state			;
	-- dbg_snd_byte_cnt		<=	snd_byte_cnt		;
	-- dbg_rcv_byte_cnt		<=	rcv_byte_cnt		;
	-- dbg_rgb_set_req 		<=	rgb_set_req 		;
	-- dbg_rgb_set_clc 		<=	rgb_set_clc 		;
	-- dbg_rcv_done	 		<=	rcv_done	 		;
	-- dbg_s_axis_tvalid	<=  s_axis_tvalid		;
	-- dbg_s_axis_tdata 	<=  s_axis_tdata 		;

end architecture;
