ENTITY logic_gates IS
	PORT (a, b: IN std_logic;
		  y: OUT std_logic_vector(6 downto 0));
END logic_gates;

ARCHITECTURE logic_gates_df OF logic_gates IS BEGIN

	y(0)<= NOT a;
	y(1)<= a AND b;
	y(2)<= a OR b;
	y(3)<= a NAND b;
	y(4)<= a NOR b;
	y(5)<= a XOR b;
	y(6)<= a XNOR b;

END logic_gates_df;
