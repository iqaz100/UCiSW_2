----------------------------------------------------------------------------------
-- Company: KOZAKI
-- Engineer: £ASKO $ MARKOŒ
-- 
-- Create Date:    11:39:15 01/15/2019 
-- Design Name:  HyperMegaUberProgramAboutMouseAndVGAModuleControlerInspiredByMyMasterSterna
-- Module Name:    picture1 - Behavioral 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.NUMERIC_BIT.ALL;


entity picture1 is
    Port ( PIX_X : in  STD_LOGIC_VECTOR (9 downto 0);
           PIX_Y : in  STD_LOGIC_VECTOR (9 downto 0);
           B1_Status : in  STD_LOGIC_VECTOR (7 downto 0);
           B2_X : in  STD_LOGIC_VECTOR (7 downto 0);
           B3_Y : in  STD_LOGIC_VECTOR (7 downto 0);
           DataRdy : in STD_LOGIC;
           CLK_50MHz : in  STD_LOGIC;
           
           RGB : out  STD_LOGIC_VECTOR (2 downto 0));
end picture1;

architecture Behavioral of picture1 is


signal P_X : signed(11 downto 0); --range 184 to 984; --bylo (signal P_X : integer;)
signal P_Y : signed(11 downto 0); --range 29 to 628;
signal ULX : signed(11 downto 0) := 584;
signal ULY : signed(11 downto 0) := 329;

begin
	P_Y <= To_Integer(Unsigned(PIX_Y));
   P_X <= To_Integer(Unsigned(PIX_X));
   
   moveMouse: process(B2_X, B3_Y, CLK_50MHz)

   begin
         if (rising_edge(CLK_50MHz) and (DataRdy = '1')) then
            --ULX <= ULX + To_Integer(Unsigned(B2_X));
            --ULY <= ULY + To_Integer(Unsigned(B3_Y));
            ULX <= To_integer((To_signed(ULX, 10)) + Signed(B2_X));
            ULY <= To_integer((To_signed(ULY, 10)) - Signed(B3_Y));
         end if;
               
   end process moveMouse;
   
   
	get_color : process(PIX_X, PIX_Y, B1_Status)
	begin
      
       RGB <= "111"; --t³o
         if(B1_Status(3 downto 0)=X"9") then
            RGB <= "010";
         elsif (B1_status(3 downto 0)=X"A") then
            RGB <= "100";
         end if;  
      
      --ten warunek cos sie psuje
          if (P_Y > ULY and P_Y < ULY + 10) then  --kwadrat
              if (P_X > ULX and P_X < ULX + 10) then
                     RGB <= "000";
              end if;
          end if;   
         
	end process get_color;
	
end Behavioral;


