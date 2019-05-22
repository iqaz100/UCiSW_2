--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schematvga.vhf
-- /___/   /\     Timestamp : 05/20/2019 12:39:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl F:/UCiSW_HERE/LabVGA/schematvga.vhf -w F:/UCiSW_HERE/LabVGA/schematvga.sch
--Design Name: schematvga
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schematvga is
   port ( BTN_SOUTH : in    std_logic; 
          CLK_50MHz : in    std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          LED0      : out   std_logic; 
          LED1      : out   std_logic; 
          SF_CE     : out   std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0); 
          PS2_Clk   : inout std_logic; 
          PS2_Data  : inout std_logic);
end schematvga;

architecture BEHAVIORAL of schematvga is
   signal line                    : std_logic_vector (63 downto 0);
   signal XLXN_1                  : std_logic_vector (2 downto 0);
   signal XLXN_2                  : std_logic_vector (9 downto 0);
   signal XLXN_70                 : std_logic_vector (15 downto 0);
   signal XLXN_71                 : std_logic_vector (9 downto 0);
   signal XLXN_78                 : std_logic_vector (7 downto 0);
   signal XLXN_79                 : std_logic_vector (7 downto 0);
   signal XLXN_80                 : std_logic_vector (7 downto 0);
   signal LED1_DUMMY              : std_logic;
   signal XLXI_5_Reset_openSignal : std_logic;
   component picture1
      port ( DataRdy   : in    std_logic; 
             CLK_50MHz : in    std_logic; 
             PIX_X     : in    std_logic_vector (9 downto 0); 
             PIX_Y     : in    std_logic_vector (9 downto 0); 
             B1_Status : in    std_logic_vector (7 downto 0); 
             B2_X      : in    std_logic_vector (7 downto 0); 
             B3_Y      : in    std_logic_vector (7 downto 0); 
             SCORE     : out   std_logic_vector (7 downto 0); 
             RGB       : out   std_logic_vector (2 downto 0); 
             LIFES     : out   std_logic_vector (7 downto 0));
   end component;
   
   component vgaControler
      port ( CLK_50MHz : in    std_logic; 
             RGB       : in    std_logic_vector (2 downto 0); 
             VGA_R     : out   std_logic; 
             VGA_G     : out   std_logic; 
             VGA_B     : out   std_logic; 
             VGA_HS    : out   std_logic; 
             VGA_VS    : out   std_logic; 
             PIX_X     : out   std_logic_vector (9 downto 0); 
             PIX_Y     : out   std_logic_vector (9 downto 0));
   end component;
   
   component PS2_Mouse
      port ( PS2_Data  : inout std_logic; 
             PS2_Clk   : inout std_logic; 
             InitOK    : out   std_logic; 
             DataRdy   : out   std_logic; 
             B1_Status : out   std_logic_vector (7 downto 0); 
             B2_X      : out   std_logic_vector (7 downto 0); 
             B3_Y      : out   std_logic_vector (7 downto 0); 
             Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Clk_Sys   : in    std_logic);
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
begin
   XLXN_70(15 downto 0) <= x"F888";
   LED1 <= LED1_DUMMY;
   XLXI_1 : picture1
      port map (B1_Status(7 downto 0)=>XLXN_78(7 downto 0),
                B2_X(7 downto 0)=>XLXN_79(7 downto 0),
                B3_Y(7 downto 0)=>XLXN_80(7 downto 0),
                CLK_50MHz=>CLK_50MHz,
                DataRdy=>LED1_DUMMY,
                PIX_X(9 downto 0)=>XLXN_2(9 downto 0),
                PIX_Y(9 downto 0)=>XLXN_71(9 downto 0),
                LIFES(7 downto 0)=>line(15 downto 8),
                RGB(2 downto 0)=>XLXN_1(2 downto 0),
                SCORE(7 downto 0)=>line(7 downto 0));
   
   XLXI_2 : vgaControler
      port map (CLK_50MHz=>CLK_50MHz,
                RGB(2 downto 0)=>XLXN_1(2 downto 0),
                PIX_X(9 downto 0)=>XLXN_2(9 downto 0),
                PIX_Y(9 downto 0)=>XLXN_71(9 downto 0),
                VGA_B=>VGA_B,
                VGA_G=>VGA_G,
                VGA_HS=>VGA_HS,
                VGA_R=>VGA_R,
                VGA_VS=>VGA_VS);
   
   XLXI_3 : PS2_Mouse
      port map (Clk_Sys=>CLK_50MHz,
                Clk_50MHz=>CLK_50MHz,
                Reset=>BTN_SOUTH,
                B1_Status(7 downto 0)=>XLXN_78(7 downto 0),
                B2_X(7 downto 0)=>XLXN_79(7 downto 0),
                B3_Y(7 downto 0)=>XLXN_80(7 downto 0),
                DataRdy=>LED1_DUMMY,
                InitOK=>LED0,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data);
   
   XLXI_5 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_70(15 downto 0),
                Clk_50MHz=>CLK_50MHz,
                Line(63 downto 0)=>line(63 downto 0),
                Reset=>XLXI_5_Reset_openSignal,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
end BEHAVIORAL;


