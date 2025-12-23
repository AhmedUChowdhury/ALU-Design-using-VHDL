----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.09.2025 17:22:15
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end ALU;

architecture Behavioral of ALU is

signal y0, y1, y2, y3, y4: std_logic_vector(3 downto 0);

begin
U1: entity work.Adder port map(A => A, B => B, Y => y1);
U2: entity work.Shifter port map(A => A, B => B, Y => y2);
U3: entity work.Multiply port map(A => A, B => B, Y => y3);
U4: entity work.Exclusive port map(A => A, B => B, Y => y4);
U5: entity work.Comparator port map(A => A, B => B, Y => y0);

with S select
Y <= y1 when "0001",
    y2 when "0010",
    y3 when "0100",
    y4 when "1000",
    y0 when "0000",
    (others => '0') when others;

end Behavioral;
