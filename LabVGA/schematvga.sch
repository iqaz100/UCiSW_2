<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(2:0)" />
        <signal name="XLXN_2(9:0)" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="LED0" />
        <signal name="line(15:8)" />
        <signal name="line(23:16)" />
        <signal name="CLK_50MHz" />
        <signal name="BTN_SOUTH" />
        <signal name="LED1" />
        <signal name="line(7:0)" />
        <signal name="line(63:0)" />
        <signal name="XLXN_70(15:0)" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_71(9:0)" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="BiDirectional" name="PS2_Clk" />
        <port polarity="BiDirectional" name="PS2_Data" />
        <port polarity="Output" name="LED0" />
        <port polarity="Input" name="CLK_50MHz" />
        <port polarity="Input" name="BTN_SOUTH" />
        <port polarity="Output" name="LED1" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <blockdef name="picture1">
            <timestamp>2019-4-8T11:23:18</timestamp>
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="448" />
        </blockdef>
        <blockdef name="vgaControler">
            <timestamp>2019-4-8T11:18:56</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PS2_Mouse">
            <timestamp>2008-9-19T9:34:14</timestamp>
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="PS2_Mouse" name="XLXI_3">
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="LED0" name="InitOK" />
            <blockpin signalname="LED1" name="DataRdy" />
            <blockpin signalname="line(7:0)" name="B1_Status(7:0)" />
            <blockpin signalname="line(15:8)" name="B2_X(7:0)" />
            <blockpin signalname="line(23:16)" name="B3_Y(7:0)" />
            <blockpin signalname="CLK_50MHz" name="Clk_50MHz" />
            <blockpin signalname="BTN_SOUTH" name="Reset" />
            <blockpin signalname="CLK_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="vgaControler" name="XLXI_2">
            <blockpin signalname="CLK_50MHz" name="CLK_50MHz" />
            <blockpin signalname="XLXN_1(2:0)" name="RGB(2:0)" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_2(9:0)" name="PIX_X(9:0)" />
            <blockpin signalname="XLXN_71(9:0)" name="PIX_Y(9:0)" />
        </block>
        <block symbolname="picture1" name="XLXI_1">
            <blockpin signalname="LED1" name="DataRdy" />
            <blockpin signalname="CLK_50MHz" name="CLK_50MHz" />
            <blockpin signalname="XLXN_2(9:0)" name="PIX_X(9:0)" />
            <blockpin signalname="XLXN_71(9:0)" name="PIX_Y(9:0)" />
            <blockpin signalname="line(7:0)" name="B1_Status(7:0)" />
            <blockpin signalname="line(15:8)" name="B2_X(7:0)" />
            <blockpin signalname="line(23:16)" name="B3_Y(7:0)" />
            <blockpin signalname="XLXN_1(2:0)" name="RGB(2:0)" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_5">
            <blockpin signalname="CLK_50MHz" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="line(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_70(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="F888" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_70(15:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(2:0)">
            <wire x2="2080" y1="1504" y2="1504" x1="1936" />
            <wire x2="2080" y1="1296" y2="1504" x1="2080" />
            <wire x2="2192" y1="1296" y2="1296" x1="2080" />
        </branch>
        <branch name="XLXN_2(9:0)">
            <wire x2="2720" y1="1392" y2="1392" x1="1520" />
            <wire x2="1520" y1="1392" y2="1504" x1="1520" />
            <wire x2="1552" y1="1504" y2="1504" x1="1520" />
            <wire x2="2720" y1="1232" y2="1232" x1="2576" />
            <wire x2="2720" y1="1232" y2="1392" x1="2720" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2688" y1="912" y2="912" x1="2576" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2688" y1="976" y2="976" x1="2576" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2688" y1="1040" y2="1040" x1="2576" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2688" y1="1104" y2="1104" x1="2576" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2688" y1="1168" y2="1168" x1="2576" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="2640" y1="528" y2="528" x1="1296" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="2640" y1="464" y2="464" x1="1296" />
        </branch>
        <branch name="LED0">
            <wire x2="2640" y1="592" y2="592" x1="1296" />
        </branch>
        <instance x="912" y="880" name="XLXI_3" orien="R0">
        </instance>
        <branch name="BTN_SOUTH">
            <wire x2="912" y1="720" y2="720" x1="784" />
        </branch>
        <instance x="2192" y="1328" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1552" y="1600" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="784" y="1152" name="CLK_50MHz" orien="R180" />
        <iomarker fontsize="28" x="784" y="720" name="BTN_SOUTH" orien="R180" />
        <iomarker fontsize="28" x="2688" y="1168" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1104" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1040" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2688" y="976" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2688" y="912" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="2640" y="592" name="LED0" orien="R0" />
        <iomarker fontsize="28" x="2640" y="464" name="PS2_Data" orien="R0" />
        <iomarker fontsize="28" x="2640" y="528" name="PS2_Clk" orien="R0" />
        <branch name="LED1">
            <wire x2="1456" y1="848" y2="848" x1="1296" />
            <wire x2="1456" y1="848" y2="1632" x1="1456" />
            <wire x2="1552" y1="1632" y2="1632" x1="1456" />
            <wire x2="2640" y1="656" y2="656" x1="1456" />
            <wire x2="1456" y1="656" y2="848" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="2640" y="656" name="LED1" orien="R0" />
        <instance x="1744" y="432" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CLK_50MHz">
            <wire x2="816" y1="1152" y2="1152" x1="784" />
            <wire x2="816" y1="1152" y2="1888" x1="816" />
            <wire x2="1552" y1="1888" y2="1888" x1="816" />
            <wire x2="912" y1="784" y2="784" x1="816" />
            <wire x2="816" y1="784" y2="848" x1="816" />
            <wire x2="912" y1="848" y2="848" x1="816" />
            <wire x2="816" y1="848" y2="912" x1="816" />
            <wire x2="816" y1="912" y2="1152" x1="816" />
            <wire x2="1696" y1="912" y2="912" x1="816" />
            <wire x2="2192" y1="912" y2="912" x1="1696" />
            <wire x2="1744" y1="400" y2="400" x1="1696" />
            <wire x2="1696" y1="400" y2="912" x1="1696" />
        </branch>
        <branch name="line(23:16)">
            <wire x2="1328" y1="784" y2="784" x1="1296" />
            <wire x2="1360" y1="784" y2="784" x1="1328" />
            <wire x2="1360" y1="784" y2="1824" x1="1360" />
            <wire x2="1552" y1="1824" y2="1824" x1="1360" />
            <wire x2="1328" y1="240" y2="784" x1="1328" />
        </branch>
        <branch name="line(15:8)">
            <wire x2="1376" y1="720" y2="720" x1="1296" />
            <wire x2="1392" y1="720" y2="720" x1="1376" />
            <wire x2="1392" y1="720" y2="1760" x1="1392" />
            <wire x2="1552" y1="1760" y2="1760" x1="1392" />
            <wire x2="1376" y1="240" y2="720" x1="1376" />
        </branch>
        <branch name="line(7:0)">
            <wire x2="1424" y1="656" y2="656" x1="1296" />
            <wire x2="1424" y1="656" y2="1696" x1="1424" />
            <wire x2="1552" y1="1696" y2="1696" x1="1424" />
            <wire x2="1424" y1="240" y2="656" x1="1424" />
        </branch>
        <branch name="line(63:0)">
            <wire x2="1376" y1="144" y2="144" x1="1328" />
            <wire x2="1424" y1="144" y2="144" x1="1376" />
            <wire x2="1744" y1="144" y2="144" x1="1424" />
        </branch>
        <bustap x2="1328" y1="144" y2="240" x1="1328" />
        <bustap x2="1376" y1="144" y2="240" x1="1376" />
        <bustap x2="1424" y1="144" y2="240" x1="1424" />
        <instance x="1536" y="176" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_70(15:0)">
            <wire x2="1744" y1="208" y2="208" x1="1680" />
        </branch>
        <branch name="LCD_E">
            <wire x2="2192" y1="144" y2="144" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="144" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="2192" y1="208" y2="208" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="208" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="2192" y1="272" y2="272" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="272" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="2192" y1="336" y2="336" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="336" name="LCD_D(3:0)" orien="R0" />
        <branch name="SF_CE">
            <wire x2="2192" y1="400" y2="400" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="400" name="SF_CE" orien="R0" />
        <branch name="XLXN_71(9:0)">
            <wire x2="2656" y1="1344" y2="1344" x1="1488" />
            <wire x2="1488" y1="1344" y2="1568" x1="1488" />
            <wire x2="1552" y1="1568" y2="1568" x1="1488" />
            <wire x2="2656" y1="1296" y2="1296" x1="2576" />
            <wire x2="2656" y1="1296" y2="1344" x1="2656" />
        </branch>
    </sheet>
</drawing>