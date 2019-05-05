----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:38 01/15/2019 
-- Design Name: 
-- Module Name:    vgaControler - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vgaControler is
    Port ( CLK_50MHz : in  STD_LOGIC;
           RGB : in  STD_LOGIC_VECTOR (2 downto 0);
           VGA_R : out  STD_LOGIC;
           VGA_G : out  STD_LOGIC;
           VGA_B : out  STD_LOGIC;
           VGA_HS : out  STD_LOGIC;
           VGA_VS : out  STD_LOGIC;
           PIX_X : out  STD_LOGIC_VECTOR (9 downto 0);
           PIX_Y : out  STD_LOGIC_VECTOR (9 downto 0));
end vgaControler;

architecture Behavioral of vgaControler is
	signal h_cnt : integer := 0;
	signal v_cnt : integer := 0;
	
	signal hor_sync : STD_LOGIC := '0';
	signal ver_sync : STD_LOGIC := '0';
	
begin
	
	counters : process(CLK_50MHz)
	begin
		if (rising_edge(CLK_50MHz)) then
			if (h_cnt < 1039) then
				h_cnt <= h_cnt + 1;
			else
				h_cnt <= 0;
				
				if (v_cnt < 665) then
					v_cnt <= v_cnt + 1;
				else
					v_cnt <= 0;
				end if;
			end if;
		end if;
	end process counters;
	
	h_sync : process(h_cnt)
	begin
		if (h_cnt < 120) then
         hor_sync <= '0';
      else
         hor_sync <= '1';
			--hor_sync <= not hor_sync;
		end if;
--<96 = 0 inaczej 1 		
		VGA_HS <= hor_sync;
	end process h_sync;
	
	v_sync : process(v_cnt)
	begin
		if (v_cnt < 6) then
         ver_sync <= '0';
      else
         ver_sync <='1';
			--ver_sync <= not ver_sync;
		end if;
		
		VGA_VS <= ver_sync;
	end process v_sync;
	
	color_pixel : process(h_cnt, v_cnt, RGB)
	begin
		if ((h_cnt > 184 and h_cnt < 984) and (v_cnt > 29 and v_cnt < 628)) then
			-- color
			VGA_R <= RGB(2);
			VGA_G <= RGB(1);
			VGA_B <= RGB(0);
			
			-- pixel
			PIX_X <= std_logic_vector(to_unsigned(h_cnt, 10));
			PIX_Y <= std_logic_vector(to_unsigned(v_cnt, 10));
		else
			-- color
			VGA_R <= '0';
			VGA_G <= '0';
			VGA_B <= '0';
			
			-- pixel
			PIX_X <= std_logic_vector(to_unsigned(800, 10));
			PIX_Y <= std_logic_vector(to_unsigned(600, 10));
		end if;
	end process color_pixel;
	
end Behavioral;
