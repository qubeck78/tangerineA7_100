

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity hdmiOut is
port( 
   
   --reset, clocks   
   resetn:        in    std_logic;

   pixelClk:      in    std_logic;
   pixelClkx5:    in    std_logic;
   pixelClkx5Ps:  in    std_logic;
   
   --vga
   vgaRed:        in    std_logic_vector( 7 downto 0 );
   vgaGreen:      in    std_logic_vector( 7 downto 0 );
   vgaBlue:       in    std_logic_vector( 7 downto 0 );
   vgaHS:         in    std_logic;
   vgaVS:         in    std_logic;
   vgaDE:         in    std_logic;
   
   --hdmi
   hdmiClkP:   out   std_logic;
   hdmiClkN:   out   std_logic;    
   hdmiDP:     out   std_logic_vector( 2 downto 0 );
   hdmiDN:     out   std_logic_vector( 2 downto 0 )

);
end hdmiOut;

architecture Behavioral of hdmiOut is

--components

--dvi encoder
component dvid
port(
   clk:        in    std_logic;
   clk_n:      in    std_logic;
   clk_pixel:  in    std_logic;
   red_p:      in    std_logic_vector(7 downto 0);
   green_p:    in    std_logic_vector(7 downto 0);
   blue_p:     in    std_logic_vector(7 downto 0);
   blank:      in    std_logic;
   hsync:      in    std_logic;
   vsync:      in    std_logic;          
   red_s:      out   std_logic;
   green_s:    out   std_logic;
   blue_s:     out   std_logic;
   clock_s:    out   std_logic
);
end component;  

--signals

--HDMI conn signals ( single ended )
signal   hdmiPixelClock:   std_logic;
signal   hdmiEncodedData:  std_logic_vector( 2 downto 0 );

--dvid signals
signal   vgaBlank:         std_logic;


begin

vgaBlank <= not vgaDE;

--place diff buffers

OBUFDS_blue:   OBUFDS port map ( O  => hdmiDP(0),  OB => hdmiDN(0),  I  => hdmiEncodedData(0) );
OBUFDS_green:  OBUFDS port map ( O  => hdmiDP(1),  OB => hdmiDN(1),  I  => hdmiEncodedData(1) );
OBUFDS_red:    OBUFDS port map ( O  => hdmiDP(2),  OB => hdmiDN(2),  I  => hdmiEncodedData(2) );
OBUFDS_clock:  OBUFDS port map ( O  => hdmiClkP,   OB => hdmiClkN,   I  => hdmiPixelClock );  

--place dvi encoder

dvidInst: dvid 
port map(

    --inputs ( vga, clocks )
    clk       => pixelClkx5,
    clk_n     => pixelClkx5Ps, 
    clk_pixel => pixelClk,
    red_p     => vgaRed,
    green_p   => vgaGreen,
    blue_p    => vgaBlue,
    blank     => vgaBlank,
    hsync     => vgaHS,
    vsync     => vgaVS,
    
    --outputs ( hdmi )  
    red_s     => hdmiEncodedData(2),
    green_s   => hdmiEncodedData(1),
    blue_s    => hdmiEncodedData(0),
    clock_s   => hdmiPixelClock
    
    );  

end Behavioral;
