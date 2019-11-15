ENTITY decoder IS
	PORT (I:IN std_logic_vector(1 downto 0);
	D:OUT std_logic_vector (3 downto 0));
END decoder;

ARCHITECTURE decoderif_else OF decoder IS
BEGIN
	PROCESS (I)
	BEGIN
	IF (I="00") THEN D<= "0001";
		ELSIF (I="01") THEN D<= "0010";
		ELSIF (I="10") THEN D<= "0100";
		ELSIF (I=”11") THEN D<= "1000";
		ELSE D<="ZZZZ";
	END IF;
	END PROCESS;
END decoderif_else;