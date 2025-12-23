----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2025 12:49:10
-- Design Name: 
-- Module Name: Shifter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Shifter is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Shifter;

architecture Behavioral of Shifter is

signal A_signed: signed(1 downto 0);
signal B_unsigned: unsigned(1 downto 0);
signal B_integer: natural;
signal Y_signed: signed(3 downto 0);

begin
A_signed <= signed(A);
B_unsigned <= unsigned(B);
B_integer <= to_integer(B_unsigned);
Y_signed <= "00" & shift_right(A_signed,B_integer);
Y <= std_logic_vector(Y_signed);

end Behavioral;
