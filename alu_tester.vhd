----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2021 11:00:05 PM
-- Design Name: 
-- Module Name: alu_tester - Behavioral
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



entity alu_tester is
port(sw, btn: in std_logic_vector(3 downto 0);
    clk: in std_logic;
    led: out std_logic_vector(3 downto 0));
end alu_tester;

architecture Behavioral of alu_tester is
component debounce
port(clk, btn : in std_logic;
     dbnc : out std_logic);
     end component;

     signal btn0, btn1, btn2, btn3 : std_logic;
     signal inpA, inpB, inpop : std_logic_vector(3 downto 0);
component my_alu
port ( A, B, x : in std_logic_vector(3 downto 0);
        led : out std_logic_vector(3 downto 0));
        end component;
begin
button0: debounce
port map(clk=> clk, btn => btn(0), dbnc => btn0);
button1: debounce
port map(clk=> clk, btn => btn(1), dbnc => btn1);
button2: debounce
port map(clk=> clk, btn => btn(2), dbnc => btn2);
button3: debounce
port map(clk=> clk, btn => btn(3), dbnc => btn3);
theALU: my_alu
port map(A => inpA, B => inpB, x => inpop, led => led);
process(clk)

begin
    if rising_edge(clk) then
        if btn3 = '1' then
            inpA <= "0000"; inpB <= "0000"; inpop <= "0000";
        else
            if btn2 = '1' then
                inpop <= sw;
            end if;
            if btn1 = '1' then
                inpA <= sw;
            end if;
            if btn0 = '1' then
                inpB <= sw;
            end if;
    
    
    
        end if;
    end if;
end process;
end Behavioral;
