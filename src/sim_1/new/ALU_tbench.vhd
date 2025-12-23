----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2025 14:23:29
-- Design Name: 
-- Module Name: Adder2_tbench - Behavioral
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

entity ALU_tbench is
--  Port ( );
end ALU_tbench;

architecture Behavioral of ALU_tbench is
    component ALU is
        port (
        A, B  : in std_logic_vector(1 downto 0);
        S  : in std_logic_vector(3 downto 0);
        Y  : out std_logic_vector(3 downto 0)
        );
    end component; 

signal A, B: std_logic_vector(1 downto 0);
signal S, Y: std_logic_vector(3 downto 0);

begin
uut : ALU port map(
    A => A,
    B => B,
    S => S,
    Y => Y
    );

stim_proc : process
begin
    A <= "01";
    B <= "00";
    S <= "0000";
    
    wait for 100 ns;
    A <= "00";
    B <= "01";
    S <= "0000";
    
    wait for 100 ns;
    A <= "11";
    B <= "10";
    S <= "0001";
    
    wait for 100 ns;
    A <= "01";
    B <= "01";
    S <= "0001";
    
    wait for 100 ns;
    A <= "01";
    B <= "01";
    S <= "0010";
    
    wait for 100 ns;
    A <= "10";
    B <= "01";
    S <= "0010";
    
    wait for 100 ns;
    A <= "10";
    B <= "10";
    S <= "0100";
    
    wait for 100 ns;
    A <= "11";
    B <= "11";
    S <= "0100";
    
    wait for 100 ns;
    A <= "10";
    B <= "01";
    S <= "1000";
    
    wait for 100 ns;
    A <= "11";
    B <= "11";
    S <= "1000";
    wait;
    end process stim_proc;

end Behavioral;
