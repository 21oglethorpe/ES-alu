----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2021 07:25:21 PM
-- Design Name: 
-- Module Name: my_alu - Behavioral
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_alu is
port ( A, B, x : in std_logic_vector(3 downto 0);
        led : out std_logic_vector(3 downto 0));
end my_alu;

architecture Behavioral of my_alu is
begin
    process(x)
    begin 
    case (x) is
        when "0000"  => led <= std_logic_vector(unsigned(A)+unsigned(B));
        when "0001"  => led <= std_logic_vector(unsigned(A)-unsigned(B));
        when "0011"  => led <= std_logic_vector(unsigned(A)+1);
        when "0100"  => led <= std_logic_vector(unsigned(A)-1);
        when "0101"  => led <= std_logic_vector(0-unsigned(A));
        when "0110"  => if A > B then led <= "1111"; else led <= "0000"; end if;
        when "0111"  => led <= std_logic_vector(unsigned(A)+unsigned(B));
        when "1000"  => led <= std_logic_vector(unsigned(A)+unsigned(B));
        when "1001"  => led <= NOT A;
        when "1010"  => led <= A and B;
        when "1011"  => led <= A or B;
        when "1100"  => led <= A xor B;
        when "1101"  => led <= A xnor B;
        when "1110"  => led <= A NAND B;
        when "1111"  => led <= A nor B;
        end case;

end process;

end Behavioral;
