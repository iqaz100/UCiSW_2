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
           
           SCORE : out STD_LOGIC_VECTOR (7 downto 0);
           LIFES : out STD_LOGIC_VECTOR (7 downto 0);           
           RGB : out  STD_LOGIC_VECTOR (2 downto 0));
end picture1;

architecture Behavioral of picture1 is

signal P_X : signed(11 downto 0); --range 184 to 984; --bylo (signal P_X : integer;)
signal P_Y : signed(11 downto 0); --range 29 to 628;
signal ULX : signed(11 downto 0) := "001001001000";
signal ULY : signed(11 downto 0) := "000101001001";
signal targetX : signed(11 downto 0) := "001001001110";
signal targetY : signed(11 downto 0) := "000100000111";
signal randX : signed(11 downto 0) :="000000000000";
signal randY : signed(11 downto 0) :="000000000000";
signal tempScore: signed(7 downto 0) :="00000000";
signal tempLifes: signed(7 downto 0) :="00000011";
signal isClicked: signed(0 downto 0) :="0";

--signal P_X : integer range 184 to 984;
--signal P_Y : integer range 29 to 628;
--signal ULX : integer := 584;
--signal ULY : integer := 329;

begin
	P_Y <= Signed("00" & PIX_Y);
   P_X <= Signed("00" & PIX_X);
   
   moveMouse: process(B2_X, B3_Y, B1_Status, CLK_50MHz, tempLifes, tempScore)

   begin
         LIFES<= STD_LOGIC_VECTOR(tempLifes);
         SCORE <= STD_LOGIC_VECTOR(tempScore);
         --if (rising_edge(CLK_50MHz)) then
         
            --randX <= (randX + 1)mod 800 + 184;
            --randY <= (randY + 1)mod 600 + 29;
            
           -- randX <= (randX + 1)mod 512 + 184;
           -- randY <= (randY + 1)mod 512 + 29;
         
        -- end if;
         
         if (rising_edge(CLK_50MHz) and (DataRdy = '1')) then
           
            --ULX <= ULX + To_Integer(Unsigned(B2_X));
            --ULY <= ULY + To_Integer(Unsigned(B3_Y));
            --if(not(B1_Status(3 downto 0) = X"9")) then            
               ULX <= ULX + Signed(B2_X);
               ULY <= ULY - Signed(B3_Y);
           -- end if;
            
            if(ULX < "000010111000") then   ---DODAC LADNE FORMATOWANIE I KOMENTARZE HERE
               ULX <="000010111000"; --184
            elsif(ULX > "001111011000" - 10) then
               ULX <="001111011000" -10; --984
            end if;
               
            if(ULY < "000000011101") then  --AND HERE
               ULY <="000000011101"; --29
            elsif(ULY > "001001110101" - 10) then
               ULY <="001001110101" - 10; --628
            end if;
            
            -----------------------------SPRAWDZANIE CZY TRAFILISMY W CEL-----------------------------------------
            
            if(ULX < targetX + 25 and ULX > targetX and ULY < targetY + 25 and ULY > targetY and (B1_Status(3 downto 0)= X"9") ) then
               isClicked<="1";
               targetX<= randX;
               targetY<= randY;
               tempScore <= tempScore + 1;
               SCORE <= STD_LOGIC_VECTOR(tempScore);
            elsif((B1_Status(3 downto 0)= X"9") and (isClicked="0")) then
               tempLifes <= tempLifes - 1;
               isClicked<="1";
               LIFES <= STD_LOGIC_VECTOR(tempLifes);
            elsif(not(B1_Status(3 downto 0) = X"9")) then
               isClicked<="0";
            end if;
            
            
            if(B1_Status(3 downto 0)=X"C") then
               tempLifes<="00000011";
               tempScore<="00000000";
            end if;
            

            
            
         end if;
         

               
   end process moveMouse;
   
   random_pos : process (CLK_50MHz)
   begin
   
   if(rising_edge(CLK_50MHz)) then
      randX <= randX + 1;
   
      if(randX>944) then
         randX<="000010111000";
         randY <= randY + 1;
      end if;
      if(randY>577) then
         randY<="000000011101";
         randX<="000010111000";
      end if;
   end if;
   
  
   end process random_pos;
   
   
	get_color : process(PIX_X, PIX_Y, B1_Status, tempLifes, P_Y, P_X, ULY, ULX, targetY, targetX)
	begin
      
       RGB <= "111"; --t³o
         --if(B1_Status(3 downto 0)=X"9") then
          --  RGB <= "010";
        -- elsif (B1_status(3 downto 0)=X"A") then
          --  RGB <= "100";
        -- end if;  


----------------WARUNKI RYSOWANIA CELU DO STRZELANIA ---------------
               
          if (P_Y > targetY and P_Y < targetY + 25) then 
              if (P_X > targetX and P_X < targetX + 25) then
                     RGB <= "101";
              end if;
          end if;
          
--------------------WARUNKI RYSOWANIA CELOWNIKA---------------------
      
          if (P_Y > ULY and P_Y < ULY + 10) then  
              if (P_X > ULX and P_X < ULX + 10) then
                     RGB <= "000";
              end if;
          end if; 
          
--------------------WARUNEK PORAZKI---------------------------------

          if(tempLifes<1)then
            RGB <= "100";
          end if;
            
--------------------RESTART GRY-------------------------------------
          if(B1_Status(3 downto 0)=X"C") then
            RGB <="111";
          end if;
            
 
            
        
         
	end process get_color;
	
end Behavioral;


