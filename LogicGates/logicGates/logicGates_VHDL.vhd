----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:46 11/04/2019 
-- Design Name: 
-- Module Name:    logicGates_VHDL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
