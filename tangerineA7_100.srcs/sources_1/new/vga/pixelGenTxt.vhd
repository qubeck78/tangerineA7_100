library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
--use ieee.numeric_std.all;

--https://tomverbeure.github.io/video_timings_calculator

--https://projectf.io/posts/video-timings-vga-720p-1080p/#vga-640x480-60-hz
--https://www.improwis.com/tables/video.webt
--http://tinyvga.com/vga-timing

entity pixelGenTxt is

generic(
   
   displayPtrStart:  std_logic_vector( 13 downto 0 ) := ( others => '0' )

);

port(

   --reset
    reset:          in  std_logic;
    pgClock:        in  std_logic;
    pgVSync:        out std_logic;
    pgHSync:        out std_logic;
    pgDe:           out std_logic;
    pgR:            out std_logic_vector( 7 downto 0 );
    pgG:            out std_logic_vector( 7 downto 0 );
    pgB:            out std_logic_vector( 7 downto 0 );

    fontRomA:       out std_logic_vector( 10 downto 0 );
    fontRomDout:    in  std_logic_vector( 7 downto 0 );

    videoRamBA:     out std_logic_vector( 13 downto 0 );
    videoRamBDout:  in  std_logic_vector( 15 downto 0 );

    
    pgXCount:       out std_logic_vector( 11 downto 0 );
    pgYCount:       out std_logic_vector( 11 downto 0 );
    pgDeX:          out std_logic;
    pgDeY:          out std_logic;
    pgPreFetchLine: out std_logic;
    pgFetchEnable:  out std_logic;

   -- 00 : 40x30 characters, 16 font/background colors
   -- 01 : 80x30 characters, 16 font/background colors
   -- 11 : 80x60 characters, 16 font/background colors
   
   pgVideoMode:      in  std_logic_vector( 1 downto 0 );
   pgCursorX:        in  std_logic_vector( 7 downto 0 );
   pgCursorY:        in  std_logic_vector( 7 downto 0 );
    
   --sync registers
   hBackPorch:       in std_logic_vector( 11 downto 0 );
   hActive:          in std_logic_vector( 11 downto 0 );
   hFrontPorch:      in std_logic_vector( 11 downto 0 );
   hSyncPulse:       in std_logic_vector( 11 downto 0 );

   vBackPorch:       in std_logic_vector( 11 downto 0 );
   vActive:          in std_logic_vector( 11 downto 0 );
   vFrontPorch:      in std_logic_vector( 11 downto 0 );
   vSyncPulse:       in std_logic_vector( 11 downto 0 )
   
);

end pixelGenTxt;

architecture behavior of pixelGenTxt is


signal  pgDisplayPtr:       std_logic_vector( 13 downto 0 );
signal  pgDisplayPtrShadow: std_logic_vector( 13 downto 0 );
signal  pgLetterYCount:     std_logic_vector( 3 downto 0 );
signal  pgLetterData:       std_logic_vector( 7 downto 0 );

signal  pgLetterX:         std_logic_vector( 7 downto 0 );
signal  pgLetterY:         std_logic_vector( 7 downto 0 );

type pgState_T is ( m0pre0, m0pre1, m0pre2, m0pre3, m0pre4, m0pre5, m0pre6, m0p0, m0p1, m0p2, m0p3, m0p4, m0p5, m0p6, m0p7,
                    m0p8, m0p9, m0p10, m0p11, m0p12, m0p13, m0p14, m0p15, m0hblank,
                   
                  m1pre0, m1pre1, m1pre2, m1pre3, m1pre4, m1pre5, m1pre6, m1p0, m1p1, m1p2, m1p3, m1p4, m1p5, m1p6, m1p7,
                  m1p8, m1p9, m1p10, m1p11, m1p12, m1p13, m1p14, m1p15, m1hblank
                   
                  );

signal pgState: pgState_T;

signal pgLutLetterColor:       std_logic_vector( 23 downto 0 );
signal pgLutBackgroundColor:   std_logic_vector( 23 downto 0 );

signal pgLetterColor:       std_logic_vector( 23 downto 0 );
signal pgBackgroundColor:   std_logic_vector( 23 downto 0 );

signal pgHTotal:           std_logic_vector( 11 downto 0 );
signal pgVTotal:           std_logic_vector( 11 downto 0 );
signal pgHSStart:          std_logic_vector( 11 downto 0 );
signal pgVSStart:          std_logic_vector( 11 downto 0 );
signal pgHActiveEnd:       std_logic_vector( 11 downto 0 );
signal pgVActiveEnd:       std_logic_vector( 11 downto 0 );
signal pgPreFetchLineY:    std_logic_vector( 11 downto 0 );
signal pgFetchEnableStart: std_logic_vector( 11 downto 0 );
signal pgFetchEnableEnd:   std_logic_vector( 11 downto 0 );

begin


syncCalc: process( all )
begin

   if rising_edge( pgClock ) then
   
      pgHTotal             <= ( hBackPorch + hActive + hFrontPorch + hSyncPulse - 1 );
      pgVTotal             <= ( vBackPorch + vActive + vFrontPorch + vSyncPulse - 1 );
      pgHSStart            <= ( hBackPorch + hActive + hFrontPorch );
      pgVSStart            <= ( vBackPorch + vActive + vFrontPorch );
      pgHActiveEnd         <= ( hBackPorch + hActive );   
      pgVActiveEnd         <= ( vBackPorch + vActive );
      pgPreFetchLineY      <= ( vBackPorch - 2 );
      pgFetchEnableStart   <= ( hBackPorch - 8 );
      pgFetchEnableEnd     <= ( hBackPorch + hActive - 8 );
            
   end if;

end process;




colorLUT: process( all )
   
   variable lutBackgroundColorVar:  std_logic_vector( 23 downto 0 );
   variable lutLetterColorVar:      std_logic_vector( 23 downto 0 );
   
   begin
   
      if rising_edge( pgClock ) then
      
           case videoRamBDout( 15 downto 12) is

               when "0000" =>
                   lutBackgroundColorVar   := x"000000";

               when "0001" =>
                   lutBackgroundColorVar   := x"000080";

               when "0010" =>
                   lutBackgroundColorVar   := x"008000";

               when "0011" =>
                   lutBackgroundColorVar   := x"800000";

               when "0100" =>
                   lutBackgroundColorVar   := x"008080";

               when "0101" =>
                   lutBackgroundColorVar   := x"808000";

               when "0110" =>
                   lutBackgroundColorVar   := x"800080";

               when "0111" =>
                   lutBackgroundColorVar   := x"202020";
 
               when "1000" =>
                   lutBackgroundColorVar   := x"808080";

               when "1001" =>
                   lutBackgroundColorVar   := x"0000ff";

               when "1010" =>
                   lutBackgroundColorVar   := x"00ff00";

               when "1011" =>
                   lutBackgroundColorVar   := x"ff0000";

               when "1100" =>
                   lutBackgroundColorVar   := x"00ffff";

               when "1101" =>
                   lutBackgroundColorVar   := x"ffff00";

               when "1110" =>
                   lutBackgroundColorVar   := x"ff00ff";

               when "1111" =>
                   lutBackgroundColorVar   := x"ffffff";

               when others =>

                   lutBackgroundColorVar   := x"000000";
           end case;

           case videoRamBDout( 11 downto 8 ) is

               when "0000" =>
                   lutLetterColorVar   := x"000000";

               when "0001" =>
                   lutLetterColorVar   := x"000080";

               when "0010" =>
                   lutLetterColorVar   := x"008000";

               when "0011" =>
                   lutLetterColorVar   := x"800000";

               when "0100" =>
                   lutLetterColorVar   := x"008080";

               when "0101" =>
                   lutLetterColorVar   := x"808000";

               when "0110" =>
                   lutLetterColorVar   := x"800080";

               when "0111" =>
                   lutLetterColorVar   := x"404040";
 
               when "1000" =>
                   lutLetterColorVar   := x"808080";

               when "1001" =>
                   lutLetterColorVar   := x"0000ff";

               when "1010" =>
                   lutLetterColorVar   := x"00ff00";

               when "1011" =>
                   lutLetterColorVar   := x"ff0000";

               when "1100" =>
                   lutLetterColorVar   := x"00ffff";

               when "1101" =>
                   lutLetterColorVar   := x"ffff00";

               when "1110" =>
                   lutLetterColorVar   := x"ff00ff";

               when "1111" =>
                   lutLetterColorVar   := x"ffffff";

               when others =>

                   lutLetterColorVar   := x"000000";
           end case;


         if pgCursorX = pgLetterX and pgCursorY = pgLetterY then

            pgLutLetterColor     <= lutBackgroundColorVar;
            pgLutBackgroundColor <= lutLetterColorVar;
         
         else
         
            pgLutBackgroundColor <= lutBackgroundColorVar;
            pgLutLetterColor     <= lutLetterColorVar;
         
         
         end if;



      end if; --rising_edge( pgClock )
      
   end process;
   


    pixelgen: process( all )

        variable    pgDeX_v: std_logic;
        variable    pgDeY_v: std_logic;

    begin


    --sync gen

    if rising_edge( pgClock ) then

        if reset = '1' then

            pgXCount            <= ( others => '0' );
            pgYCount            <= ( others => '0' );

            pgState             <= m0pre0;

            pgDisplayPtr        <= displayPtrStart;
            pgDisplayPtrShadow  <= displayPtrStart;

            pgLetterYCount      <= ( others => '0' );


        else

            if pgXCount < pgHTotal then

                pgXCount <= pgXCount + '1';

            else

                --x sync wrap
                pgXCount <= ( others => '0' );

                if pgYCount < pgVTotal then
                
                    pgYCount <= pgYCount + '1';

                else

                    pgYCount <= ( others => '0' );

                end if;

            end if;


            --gen sync signals

            --horizontal
            --bp    active  fp  hs
            --48    640     16  96
            
            if pgXCount >= pgHSStart then 
                   
                pgHSync <= '1';
            
            else

                pgHSync <= '0';

            end if;


            --vertical
            --bp    active  fp  vs
            --33    480     10  2

            if pgYCount >= pgVSStart then
            
                pgVSync <= '1';

            else

                pgVSync <= '0';

            end if;

            --display enable x and y

            if pgXCount >= hBackPorch and pgXCount < pgHActiveEnd then

                pgDeX_v := '1';

            else

                pgDeX_v := '0';

            end if;

            if pgYCount >= vBackPorch and pgYCount < pgVActiveEnd then

                pgDeY_v := '1';

            else

                pgDeY_v := '0';

            end if;

            --Pre fetch line, active for 2 pixels, just before end of front v porch. To be used as first dma request
            
            if pgYCount = pgPreFetchLineY and pgXCount( 11 downto 2 ) = "00000000000" then
         
               pgPreFetchLine <= '1';
            
            else
            
               pgPreFetchLine <= '0';
               
            end if;
            
            --fetch enable: 8 pixels before line start, only when deY is active

            if pgDeY = '1' and pgXCount >= pgFetchEnableStart and pgXCount < pgFetchEnableEnd then

                pgFetchEnable <= '1';
            
            else

                pgFetchEnable <= '0';
            
            end if;


            pgDe    <= pgDeX_v and pgDeY_v;
            pgDeX   <= pgDeX_v;
            pgDeY   <= pgDeY_v;


            -- reset = '0', rising_edge of clock

            if pgVSync = '1' then
            
               pgDisplayPtr        <= displayPtrStart;
               pgDisplayPtrShadow  <= displayPtrStart;

               pgLetterYCount      <= ( others => '0' );
               
               pgLetterX           <= ( others => '0' );
               pgLetterY           <= ( others => '0' );


            end if;


            case pgState is
            
               --mode 0 -> 40x30 chars
                --wait for fetch enable
                --7 prefetch states to match 8 clock cycles between fetch enable and display enable
                when m0pre0 =>
                    
                    pgR <= ( others => '0' );
                    pgG <= ( others => '0' );
                    pgB <= ( others => '0' );

                    if pgFetchEnable = '1' then

                        --clear letter x
                        
                        pgLetterX   <= ( others => '0' );                    

                        --pre fetch first character and attributes
                        pgDisplayPtrShadow  <= pgDisplayPtr;
                        videoRamBA          <= pgDisplayPtr;

                        pgState <= m0pre1;

                    end if;

                  --switch mode if necesary
                  if pgVideoMode( 0 ) = '1' then
                  
                     pgState  <= m1pre0;
                     
                  end if;
                  
                when m0pre1 =>

                    pgState <= m0pre2;


                when m0pre2 =>                    

                    --read char shape
                    fontRomA            <= videoRamBDout( 7 downto 0 ) & pgLetterYCount( 3 downto 1 );

                    pgState <= m0pre3;
                    
                when m0pre3 =>
                     
                    --increase letter x
                    
                    pgLetterX <= pgLetterX + 1;

                     --latch colors
                     pgLetterColor     <= pgLutLetterColor;
                     pgBackgroundColor <= pgLutBackgroundColor;
                
                    pgState <= m0pre4;

                when m0pre4 =>

                    pgDisplayPtr    <= pgDisplayPtr + 1;
                    pgLetterData    <= fontRomDout;
            
                    pgState <= m0pre5;

                when m0pre5 =>
            
                    pgState <= m0pre6;

                when m0pre6 =>
            
                    pgState <= m0p0;


                when m0p0 =>


                    if pgLetterData( 7 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;


                    pgState <= m0p1;
                
                when m0p1 =>

                    pgState <= m0p2;

                when m0p2 =>

                    if pgLetterData( 6 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;
                    
                    pgState <= m0p3;

                when m0p3 =>

                    pgState <= m0p4;


                when m0p4 =>

                     if pgLetterData( 5 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;
                   
                    pgState <= m0p5;

                when m0p5 =>

                    pgState <= m0p6;

                when m0p6 =>

                    if pgLetterData( 4 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;

                    pgState <= m0p7;

                when m0p7 =>

                    pgState <= m0p8;

                when m0p8 =>

                    if pgLetterData( 3 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;

                    pgState <= m0p9;

                when m0p9 =>


                    --start fetch
                    videoRamBA          <= pgDisplayPtr;

                    pgState <= m0p10;


                when m0p10 =>

                    if pgLetterData( 2 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;

                    pgState <= m0p11;


                when m0p11 =>

                    --read char shape
                    fontRomA            <= videoRamBDout( 7 downto 0 ) & pgLetterYCount( 3 downto 1 );


                    pgState <= m0p12;


                when m0p12 =>

                    if pgLetterData( 1 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;


                    pgState <= m0p13;

                when m0p13 =>

                    pgState <= m0p14;


                when m0p14 =>

                     if pgLetterData( 0 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;

                    pgState <= m0p15;


                when m0p15 =>

                    if pgFetchEnable = '1' then

                        pgDisplayPtr    <= pgDisplayPtr + 1;

                    end if;

                    --increase letter x
                    
                    pgLetterX <= pgLetterX + 1;

                    --store next character
                    pgLetterData    <= fontRomDout;

                     --latch colors
                     pgLetterColor     <= pgLutLetterColor;
                     pgBackgroundColor <= pgLutBackgroundColor;

                    if pgFetchEnable = '1' then

                        pgState <= m0p0;

                    else

                        pgState <= m0hblank;

                    end if;

                when m0hblank =>

                    pgR <= ( others => '0' );
                    pgG <= ( others => '0' );
                    pgB <= ( others => '0' );

                    if pgLetterYCount /= "1111" then

                        --if not end of 16 px line (one letter height)
                        --restore data pointer
                        pgDisplayPtr <= pgDisplayPtrShadow;

                    else
                    
                        pgLetterY <= pgLetterY + 1;
                        
                    end if;

                    pgLetterYCount <= pgLetterYCount + 1;

                    pgState <= m0pre0;


               --mode 1 -> 80x30 chars
               --wait for fetch enable
               --7 prefetch states to match 8 clock cycles between fetch enable and display enable
                when m1pre0 =>
                    
                    pgR <= ( others => '0' );
                    pgG <= ( others => '0' );
                    pgB <= ( others => '0' );

                    if pgFetchEnable = '1' then
                    
                        --clear letter x
                        pgLetterX   <= ( others => '0' );                    

                        --pre fetch first character and attributes
                        pgDisplayPtrShadow  <= pgDisplayPtr;
                        videoRamBA          <= pgDisplayPtr;

                        pgState <= m1pre1;

                    end if;

                  --switch mode if necesary
                  if pgVideoMode( 0 ) = '0' then
                  
                     pgState  <= m0pre0;
                     
                  end if;

               when m1pre1 =>

                    pgState <= m1pre2;


                when m1pre2 =>                    

                    --read char shape
                     if pgVideoMode( 1 ) = '0' then
                        
                        --80x30
                        
                        fontRomA            <= videoRamBDout( 7 downto 0 ) & pgLetterYCount( 3 downto 1 );

                    else

                        --80x60
                        
                        fontRomA            <= videoRamBDout( 7 downto 0 ) & pgLetterYCount( 2 downto 0 );
                    
                    end if;
                    
                    pgState <= m1pre3;
                    
                when m1pre3 =>
                     
                     --latch colors
                     pgLetterColor     <= pgLutLetterColor;
                     pgBackgroundColor <= pgLutBackgroundColor;

                   --increase letter x                        
                   pgLetterX   <= pgLetterX + 1;                    
                
                    pgState <= m1pre4;

                when m1pre4 =>

                    pgDisplayPtr    <= pgDisplayPtr + 1;
                    pgLetterData    <= fontRomDout;
            
                    pgState <= m1pre5;

                when m1pre5 =>
            
                    pgState <= m1pre6;

                when m1pre6 =>
            
                    pgState <= m1p0;


                when m1p0 =>

                    if pgLetterData( 7 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;

                    pgState <= m1p1;

                when m1p1 =>

                    if pgLetterData( 6 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;
                    
                    pgState <= m1p2;
                    
                when m1p2 =>

                     if pgLetterData( 5 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;
                   
                    pgState <= m1p3;
                    
                when m1p3 =>

                     if pgLetterData( 4 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;

                  --start fetch
                  videoRamBA          <= pgDisplayPtr;
                   
                  pgState <= m1p4;

                when m1p4 =>

                     if pgLetterData( 3 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;
                     
                    
                  pgState <= m1p5;

                when m1p5 =>

                     if pgLetterData( 2 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;
                   
                     --read char shape
                    if pgVideoMode( 1 ) = '0' then

                        --80x30

                        fontRomA            <= videoRamBDout( 7 downto 0 ) & pgLetterYCount( 3 downto 1 );

                    else

                        --80x60

                        fontRomA            <= videoRamBDout( 7 downto 0 ) & pgLetterYCount( 2 downto 0 );                    
                    
                    end if;
                    
                    pgState <= m1p6;

              when m1p6 =>

                     if pgLetterData( 1 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;

                   

                    pgState <= m1p7;

                when m1p7 =>

                     if pgLetterData( 0 ) = '1' then

                        pgR <= pgLetterColor( 7 downto 0 );
                        pgG <= pgLetterColor( 15 downto 8 );
                        pgB <= pgLetterColor( 23 downto 16 );

                    else

                        pgR <= pgBackgroundColor( 7 downto 0 );
                        pgG <= pgBackgroundColor( 15 downto 8 );
                        pgB <= pgBackgroundColor( 23 downto 16 );

                    end if;
                   
                   if pgFetchEnable = '1' then

                        pgDisplayPtr    <= pgDisplayPtr + 1;

                    end if;
                     


                    --store next character
                    pgLetterData    <= fontRomDout;

                     --latch colors
                     pgLetterColor     <= pgLutLetterColor;
                     pgBackgroundColor <= pgLutBackgroundColor;

                   --increase letter x                        
                   pgLetterX   <= pgLetterX + 1;                    

                    if pgFetchEnable = '1' then

                        pgState <= m1p0;

                    else

                        pgState <= m1hblank;

                    end if;
                    
               when m1hblank =>

                    pgR <= ( others => '0' );
                    pgG <= ( others => '0' );
                    pgB <= ( others => '0' );

                    
                    if pgVideoMode( 1 ) = '0' then

                        --80x30

                        if pgLetterYCount /= "1111" then
        
                            --if not end of 16 px line (one letter height)
                            --restore data pointer
                            pgDisplayPtr <= pgDisplayPtrShadow;
                        else
                        
                           --increase letter y
                           pgLetterY   <= pgLetterY + 1;
        
                        end if;
        
                    else

                        --80x60

                        if pgLetterYCount( 2 downto 0 ) /= "111" then
        
                            --if not end of 16 px line (one letter height)
                            --restore data pointer
                            pgDisplayPtr <= pgDisplayPtrShadow;
                        
                        else
                        
                           --increase letter y
                           pgLetterY   <= pgLetterY + 1;
        
                        end if;
                    
                    
                    end if;
                    
                    pgLetterYCount <= pgLetterYCount + 1;

                    pgState <= m1pre0;
                    
            when others =>

                    pgState <= m0pre0;

            end case;

        end if;
    end if;

end process; 


end behavior;
