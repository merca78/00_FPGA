library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity jstk_uart_bridge is
	generic (
		HEADER_CODE		: std_logic_vector(7 downto 0) := x"c0"; -- Header of the packet
		TX_DELAY		: positive := 1_000_000;    -- Pause (in clock cycles) between two packets
		JSTK_BITS		: integer range 1 to 7 := 7    -- Number of bits of the joystick axis to transfer to the PC 
	);
	Port ( 
		aclk 			: in  	STD_LOGIC;
		aresetn			: in  	STD_LOGIC;

		-- Data going TO the PC (i.e., joystick position and buttons state)
		m_axis_tvalid	: out 	STD_LOGIC;
		m_axis_tdata	: out 	STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in 	STD_LOGIC;

		-- Data coming FROM the PC (i.e., LED color)
		s_axis_tvalid	: in 	STD_LOGIC;
		s_axis_tdata	: in 	STD_LOGIC_VECTOR(7 downto 0);
		s_axis_tready	: out   STD_LOGIC;

		jstk_x			: in 	std_logic_vector(9 downto 0);
		jstk_y			: in 	std_logic_vector(9 downto 0);
		btn_jstk		: in 	std_logic;
		btn_trigger		: in 	std_logic;

		led_r			: out 	std_logic_vector(7 downto 0);
		led_g			: out 	std_logic_vector(7 downto 0);
		led_b			: out 	std_logic_vector(7 downto 0)
	);
end jstk_uart_bridge;

architecture Behavioral of jstk_uart_bridge is
	--== FSM 
	type state_type1 is (IDLE, DATA_TRANS)		;
    signal next_state, curr_state: state_type1	;

	--== SIGNALS 
	signal 	rcv_cnt		: unsigned(3 downto 0)	;
	signal 	snd_cnt		: unsigned(3 downto 0)	;
	signal 	tx_cnt 		: integer				;

	signal 	led_r_reg	: std_logic_vector(7 downto 0);
	signal 	led_g_reg	: std_logic_vector(7 downto 0);
	signal 	led_b_reg	: std_logic_vector(7 downto 0);

	signal	send_flag	: std_logic;

	signal 	jstk_x_reg 	: std_logic_vector(7 downto 0);
	signal 	jstk_y_reg 	: std_logic_vector(7 downto 0);
	signal 	button_reg 	: std_logic_vector(7 downto 0);

begin
	--=  Assignment
	led_r 			<= led_r_reg;
	led_g 			<= led_g_reg;
	led_b 			<= led_b_reg;
	s_axis_tready 	<= '1'		;

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

	UART_JMP_ENG : process(curr_state, s_axis_tvalid, rcv_cnt) is
	begin
		case curr_state is
			when IDLE  =>
				if (s_axis_tvalid='1') then
					if (s_axis_tdata=HEADER_CODE) then 
						next_state <= DATA_TRANS;
					else
						next_state <= IDLE;	
					end if;
				else
					next_state <= IDLE;
				end if;

			when DATA_TRANS =>	
				if (rcv_cnt=3) then --+
					next_state <= IDLE;
				else
					next_state <= DATA_TRANS;
				end if;

			when others =>
				next_state <= IDLE;
		end case;
	end process UART_JMP_ENG;
	
	--== rcv_cnt
	CNT_ENG : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				rcv_cnt <= (others => '0');
			elsif (curr_state=DATA_TRANS) then
				if (s_axis_tvalid = '1')then
					rcv_cnt <= rcv_cnt + 1;
				end if;
			else
				rcv_cnt <= (others => '0');
			end if;
		end if;
	end process CNT_ENG;

	--== recieve data from PC 
	DAT_ENG : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				led_r_reg <= x"55";
				led_g_reg <= x"55";
				led_b_reg <= x"55";
			elsif (s_axis_tvalid = '1' and curr_state=DATA_TRANS) then
				case (rcv_cnt) is
				when x"0" 	=> 	led_r_reg <= s_axis_tdata;
				when x"1" 	=> 	led_g_reg <= s_axis_tdata;
				when x"2" 	=> 	led_b_reg <= s_axis_tdata;
				when others =>  
								led_r_reg <= led_r_reg;
								led_g_reg <= led_g_reg;
								led_b_reg <= led_b_reg;
				end case;
			else
				led_r_reg <= led_r_reg;
				led_g_reg <= led_g_reg;
				led_b_reg <= led_b_reg;
			end if;
		end if;
	end process DAT_ENG;

	--== send data to PC
	-- REG_ENG : process (aclk, aresetn) is
	-- begin
	-- 	if rising_edge(aclk) then
	-- 		if aresetn = '0' then
	-- 			coord_dat <= (others => '0');
	-- 		else
	-- 			coord_dat <= jstk_x&jstk_y&btn_jstk&btn_trigger;
	-- 		end if;
	-- 	end if;
	-- end process REG_ENG;
	

	TX_CNT_ENG : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				tx_cnt <= 0;
			elsif (tx_cnt = TX_DELAY-1) then
				tx_cnt <= 0;
			else
				tx_cnt <= tx_cnt + 1;
			end if;
		end if;
	end process TX_CNT_ENG;

	FLAG_ENG : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				send_flag  <= '0';
				jstk_x_reg <= (others => '0');
				jstk_y_reg <= (others => '0');
				button_reg <= (others => '0');
			elsif (tx_cnt = TX_DELAY-1) then 
				send_flag <= '1';
				jstk_x_reg <= jstk_x(9 downto 2);
				jstk_y_reg <= jstk_y(9 downto 2);
				button_reg <= (0=>btn_jstk,1=>btn_trigger,others => '0');
			elsif (m_axis_tready='1' and snd_cnt=3) then
				send_flag <= '0';
				jstk_x_reg <= jstk_x_reg;
				jstk_y_reg <= jstk_y_reg;
				button_reg <= button_reg;
			end if;
		end if;
	end process FLAG_ENG;

	SND_CNT_ENG : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				snd_cnt <= (others => '0');
			elsif (send_flag = '1' ) then 
				if	 (m_axis_tready='1') then
					snd_cnt <= snd_cnt + 1;
				else
					snd_cnt <= snd_cnt ;
				end if;
			else
				snd_cnt <= (others => '0');
			end if;
		end if;
	end process SND_CNT_ENG;

	SED_PC : process (aclk, aresetn) is
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then
				m_axis_tvalid 	<= '0';
				m_axis_tdata 	<= (others => '0');
			elsif (send_flag = '1') then 
				m_axis_tvalid 	<= '1';
				case snd_cnt is
				when x"0" 	=> 	m_axis_tdata <= HEADER_CODE;
				when x"1" 	=> 	m_axis_tdata <= jstk_x_reg;
				when x"2" 	=> 	m_axis_tdata <= jstk_y_reg;
				when x"3" 	=> 	m_axis_tdata <= button_reg;
				when others =>  m_axis_tdata <= (others => '0');
				end case;
			else
				m_axis_tvalid 	<= '0';
				m_axis_tdata 	<= (others => '0');
			end if;
		end if;
	end process SED_PC;
end architecture;
