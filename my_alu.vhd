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
case x is
when "0000" => led <= std_logic_vector(unsigned(A)+ unsigned(B));

end case;

end Behavioral;
