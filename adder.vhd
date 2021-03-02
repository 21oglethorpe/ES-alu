----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2021 06:54:06 PM
-- Design Name: 
-- Module Name: adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
port (A, B, C_in : in std_logic;
        S, C_out: out std_logic);
end adder;

architecture Behavioral of adder is
signal A_XOR_B, AB, C_in_xor :  std_logic;
begin
A_XOR_B <= A xor B;
s <= C_in xor A_XOR_B;
AB <= A and B;
C_in_xor <= A_XOR_B and C_in;
C_out <= C_in_xor or AB;

end Behavioral;
