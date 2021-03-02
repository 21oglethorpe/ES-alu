----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2021 07:06:59 PM
-- Design Name: 
-- Module Name: adder_4b - Behavioral
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

entity adder_4b is
port(A3, A2, A1, A0, B3, B2, B1, B0 : in std_logic;
        C0 : in std_logic;
        S3, S2, S1, S0: out std_logic;
        C4: out std_logic);
end adder_4b;

architecture Behavioral of adder_4b is
component adder
port (A, B, C_in : in std_logic;
        S, C_out: out std_logic);
end component;
signal C1, C2, C3 : std_logic;
begin

ad0: adder
port map(A => A0, B => B0, C_in => C0, S => S0, C_out => C1);

ad1: adder
port map(A => A1, B => B1, C_in => C1, S => S1, C_out => C2);
ad2: adder
port map(A => A2, B => B2, C_in => C2, S => S2, C_out => C3);
ad3: adder
port map(A => A3, B => B3, C_in => C3, S => S3, C_out => C4);
end Behavioral;
