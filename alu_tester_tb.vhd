----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2021 01:31:43 PM
-- Design Name: 
-- Module Name: alu_tester_tb - Behavioral
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

entity alu_tester_tb is

end alu_tester_tb;
 
architecture Behavioral of alu_tester_tb is
component alu_tester
port(sw, btn: in std_logic_vector(3 downto 0);
    clk: in std_logic;
    led: out std_logic_vector(3 downto 0));
    end component;
signal tb_clk : std_logic := '0';
signal switch_tb : std_logic_vector(3 downto 0) ;
signal btn_tb : std_logic_vector(3 downto 0) := "0000";
signal led_tb: std_logic_vector(3 downto 0);
begin
clk_generate: process
begin 
wait for 4 ns;
tb_clk <= '1';
wait for 4 ns;
tb_clk <= '0';
end process;

clicking : process
begin
wait for 21 ms;
switch_tb <= "0110";
wait for 21 ms;
btn_tb <= "0110";


end process;

alu : alu_tester
port map( sw => switch_tb, clk => tb_clk, btn => btn_tb, led =>led_tb);
end Behavioral;
