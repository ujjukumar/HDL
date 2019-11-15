ENTITY encoder IS
	PORT (I: IN std_logic_vector (7 downto 0);
	D: OUT std_logic_vector (2 downto 0));
END encoder;

ARCHITECTURE encoder_wp OF encoder IS
BEGIN
	PROCESS (I)
	BEGIN
	IF I(7) ='1' THEN D<= "111";
		ELSIF I(6) ='1' THEN D<= "110";
		ELSIF I(5) ='1' THEN D<= "101";
		ELSIF I(4) ='1' THEN D<= "100";
		ELSIF I(3) ='1' THEN D<= "011";
		ELSIF I(2) ='1' THEN D<= "010";
		ELSIF I(1) ='1' THEN D<= "001";
		ELSIF I(0) ='1' THEN D<= "000";
		ELSE D<="ZZZ";
	END IF;
	END PROCESS;
END encoder_wp;