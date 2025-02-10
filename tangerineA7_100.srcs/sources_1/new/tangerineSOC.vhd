

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity tangerineSOC is
port( 
   
   --reset, clocks 
   resetn:        in    std_logic;
    
   mainClock:     in    std_logic;
   mainClockPs:   in    std_logic;
   mainClockD2:   in    std_logic;    
   pixelClock:    in    std_logic;
    
   --vga
   vgaRed:        out   std_logic_vector( 7 downto 0 );
   vgaGreen:      out   std_logic_vector( 7 downto 0 );
   vgaBlue:       out   std_logic_vector( 7 downto 0 );
   vgaHS:         out   std_logic;
   vgaVS:         out   std_logic;
   vgaDE:         out   std_logic;
    
   --uart
   uartTX:        out   std_logic;
   uartRX:        in    std_logic;

   --sd card
   sdMciDat:      inout std_logic_vector( 3 downto 0 );	
   sdMciCmd:	   out   std_logic;	
   sdMciClk:	   out   std_logic;	 

   --buttons
   buttons:       in    std_logic_vector( 0 downto 0 );
    
   --leds
   leds:          out   std_logic_vector( 1 downto 0 )

);
end tangerineSOC;

architecture Behavioral of tangerineSOC is

--components
component inputSync

    generic(
        inputWidth              : integer := 1
    );

    port(

        clock:                          in  std_logic;

        signalInput:                    in  std_logic_vector( inputWidth - 1 downto 0 );
        signalOutput:                   out std_logic_vector( inputWidth - 1 downto 0 )

    );

end component;

-- font rom
component fontPROM
port(
   clka:    in    std_logic;
   addra:   in    std_logic_vector( 10 downto 0 );
   douta:   out   std_logic_vector( 7 downto 0 ) 
);
end component;

-- system RAM: bootloader, stack, text mode video memory
component systemRam
port (
   clka:    in    std_logic;
   wea:     in    std_logic_vector( 3 downto 0 );
   addra:   in    std_logic_vector( 12 downto 0 );
   dina:    in    std_logic_vector( 31 downto 0 );
   douta:   out   std_logic_vector( 31 downto 0 );
   clkb:    in    std_logic;
   web:     in    std_logic_vector( 3 downto 0 );
   addrb:   in    std_logic_vector( 12 downto  0);
   dinb:    in    std_logic_vector( 31 downto 0 );
   doutb:   out   std_logic_vector( 31 downto 0 ) 
);
end component; 

-- text mode pixel and sync gen
component pixelGenTxt
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
end component;

--video mux ( mixes text, graphics )
component videoMux is
port( 

   --reset, clock
   resetn:     in    std_logic;
   pixelClock: in    std_logic;
   
   --mux mode
   muxMode:    in    std_logic_vector( 1 downto 0 );
   
   --video inputs
   
   --text / sync
   
   pgHSync:    in    std_logic;
   pgVSync:    in    std_logic;
   pgDe:       in    std_logic; 
   
   pgR:        in    std_logic_vector( 7 downto 0 );
   pgG:        in    std_logic_vector( 7 downto 0 );
   pgB:        in    std_logic_vector( 7 downto 0 );
   
   --gfx
   pggR:       in    std_logic_vector( 7 downto 0 );
   pggG:       in    std_logic_vector( 7 downto 0 );
   pggB:       in    std_logic_vector( 7 downto 0 );
   
   --video output
  
   vgaHS:      out   std_logic;
   vgaVS:      out   std_logic;
   vgaDE:      out   std_logic;
                
   vgaR:       out   std_logic_vector( 7 downto 0 );
   vgaG:       out   std_logic_vector( 7 downto 0 );
   vgaB:       out   std_logic_vector( 7 downto 0 )
   
);
end component;

component vga is
port( 

   --cpu interface ( registers )
   reset:            in    std_logic;
   clock:            in    std_logic;
   a:                in    std_logic_vector( 15 downto 0 );
   din:              in    std_logic_vector( 31 downto 0 );
   dout:             out   std_logic_vector( 31 downto 0 );
   
   ce:               in    std_logic;
   wr:               in    std_logic;
   dataMask:         in    std_logic_vector( 3 downto 0 );
   
   ready:            out   std_logic;

   --pixel clock
   pixelClock:       in    std_logic;

   --block ram interface ( text mode frame buffer ram )
   txtFbRamClock:    out   std_logic;
   txtFbRamA:        out   std_logic_vector( 12 downto 0 );
   txtFbRamDIn:      in    std_logic_vector( 31 downto 0 );

   --dma interface ( gfx mode line data buffer, dma requests )
   gfxFbRamClock:    out   std_logic;
   gfxFbRamDIn:      in  std_logic_vector( 31 downto 0 );
   gfxFbRamA:        out std_logic_vector( 8 downto 0 );    --2 buffers, 256 long words each

    --2 dma requests
   vgaDMARequest:    out std_logic_vector( 1 downto 0 );

   --video output ( VGA )
   vgaRed:           out   std_logic_vector( 7 downto 0 );
   vgaGreen:         out   std_logic_vector( 7 downto 0 );
   vgaBlue:          out   std_logic_vector( 7 downto 0 );
   vgaHS:            out   std_logic;
   vgaVS:            out   std_logic;
   vgaDE:            out   std_logic 
     
);
end component;

--risc-v cpu :)
component nekoRv is
port( 
    
   clk:                in  std_logic;
   reset:              in  std_logic;
    
   mtimeIrq:           in  std_logic;

   a:                  out std_logic_vector( 31 downto 0 );
   din:                in  std_logic_vector( 31 downto 0 );
   dout:               out std_logic_vector( 31 downto 0 );
    
   be:                 out std_logic;
   ready:              in  std_logic;
   wr:                 out std_logic;
   dataMask:           out std_logic_vector( 3 downto 0 );
    
   instrFetchCycle:    out std_logic
    
);
end component;

component rootRegisters is
port(
   --cpu interface
   reset:            in    std_logic;
   clock:            in    std_logic;
   a:                in    std_logic_vector( 15 downto 0 );
   din:              in    std_logic_vector( 31 downto 0 );
   dout:             out   std_logic_vector( 31 downto 0 );
   
   ce:               in    std_logic;
   wr:               in    std_logic;
   dataMask:         in    std_logic_vector( 3 downto 0 );
   
   ready:            out   std_logic;
  
   --video mode ( to be moved to vga regs )
   vmMode:           out   std_logic_vector( 15 downto 0 );
   
   --gpio
   gpi:              in    std_logic_vector( 31 downto 0 );
   gpo:              out   std_logic_vector( 31 downto 0 );
      
   --vsync for frame timer
   vsync:            in    std_logic;
   
   --mtime irq out
   mtimeIrq:         out   std_logic
);
end component;

-- UART
component UART
port(
   --cpu interface
   reset:            in    std_logic;
   clock:            in    std_logic;
   a:                in    std_logic_vector( 15 downto 0 );
   din:              in    std_logic_vector( 31 downto 0 );
   dout:             out   std_logic_vector( 31 downto 0 );
   
   ce:               in    std_logic;
   wr:               in    std_logic;
   dataMask:         in    std_logic_vector( 3 downto 0 );
   
   ready:            out   std_logic;
   
   --uart interface
   uartTXD:          out std_logic;
   uartRXD:          in  std_logic
   );
end component; 

--signals

signal reset:           std_logic;

--font rom signals
signal fontRomA:        std_logic_vector( 10 downto 0 );
signal fontRomDout:     std_logic_vector( 7 downto 0 );

--system ram signals
signal systemRAMCE:                std_logic;
signal systemRamReady:             std_logic;
signal systemRamDoutForCPU:        std_logic_vector( 31 downto 0 );
signal systemRamWr:                std_logic_vector( 3 downto 0 ); 

--text framebuffer signals
signal txtfbRAMCE:                std_logic;
signal txtfbRamReady:             std_logic;
signal txtfbRamDoutForCPU:        std_logic_vector( 31 downto 0 );
signal txtfbRamDoutForPixelGen:   std_logic_vector( 31 downto 0 );
signal txtfbRamWr:                std_logic_vector( 3 downto 0 ); 


-- video mux signals
signal vmMode:          std_logic_vector( 15 downto 0 );

-- txt pixel gen signals
signal pgVSync:         std_logic;
signal pgHSync:         std_logic;
signal pgDe:            std_logic;
signal pgR:             std_logic_vector( 7 downto 0 );
signal pgG:             std_logic_vector( 7 downto 0 );
signal pgB:             std_logic_vector( 7 downto 0 ); 
signal pgXCount:        std_logic_vector( 11 downto 0 );
signal pgYCount:        std_logic_vector( 11 downto 0 );
signal pgDeX:           std_logic;
signal pgDeY:           std_logic;
signal pgPreFetchLine:  std_logic;
signal pgFetchEnable:   std_logic;
signal videoRamBDout:   std_logic_vector( 15 downto 0 );
signal videoRamBA:      std_logic_vector( 13 downto 0 ); 
signal pgCursorX:       std_logic_vector( 7 downto 0 );
signal pgCursorY:       std_logic_vector( 7 downto 0 );

--vsync signal synchronised to cpu clock domain
signal pgVSyncMainClock:   std_logic;

--gfx pixel gen signals

signal pggRegsClock:          std_logic;
signal pggRegsDoutForCPU:     std_logic_vector( 31 downto 0 );
signal pggRegsCE:             std_logic;
signal pggRegsWr:             std_logic;
signal pggRegsReady:          std_logic;
signal pggRegsA:              std_logic_vector( 15 downto 0 );
signal pggRegsDIn:            std_logic_vector( 31 downto 0 );
signal pggRegsDOut:           std_logic_vector( 31 downto 0 );

signal pgEnabled:             std_logic;
signal pggR:                  std_logic_vector( 7 downto 0 );
signal pggG:                  std_logic_vector( 7 downto 0 );
signal pggB:                  std_logic_vector( 7 downto 0 ); 
signal pggDMARequest:         std_logic_vector( 1 downto 0 );

signal gfxBufRamClock:        std_logic;
signal gfxBufRamDOut:         std_logic_vector( 31 downto 0 );
signal gfxBufRamRdA:          std_logic_vector( 8 downto 0 );

--cpu signals
signal cpuReset:     std_logic;
signal cpuMtimeIrq:  std_logic;

signal cpuAOut:      std_logic_vector( 29 downto 0 );
signal cpuDOut:      std_logic_vector( 31 downto 0 );

signal cpuMemValid:  std_logic;
signal cpuMemInstr:  std_logic; 
signal cpuMemReady:  std_logic;
signal cpuAOutFull:  std_logic_vector( 31 downto 0 );
signal cpuWrStrobe:  std_logic_vector( 3 downto 0 );
signal cpuDin:       std_logic_vector( 31 downto 0 );

signal cpuWr:			std_logic;
signal cpuDataMask:  std_logic_vector( 3 downto 0 );

--cpu resetgen
signal cpuResetGenCounter:  std_logic_vector( 15 downto 0 ); 

--root registers signals
signal rootRegsCE:            std_logic;
signal rootRegsDoutForCPU:    std_logic_vector( 31 downto 0 );
signal rootRegsReady:         std_logic;
signal gpi:                   std_logic_vector( 31 downto 0 );
signal gpo:                   std_logic_vector( 31 downto 0 );

--uart signals
signal uartCE:              std_logic;
signal uartDoutForCPU:      std_logic_vector( 31 downto 0 );
signal uartReady:           std_logic;


begin

--positive reset

reset    <= not resetn;

--drive unused signals, ports

pgCursorX   <= x"00";
pgCursorY   <= x"00";
pggR        <= ( others => '0' );
pggG        <= ( others => '0' );
pggB        <= ( others => '0' );


sdMciDat    <= ( others => 'Z' );
sdMciCmd    <= '1';
sdMciClk    <= '1';

-- assign gpi/gpo

gpi         <= ( others => '0' );
leds        <= gpo( 31 downto 30 );


-- sync VSync to main clock

inputSyncVSInst:inputSync
generic map
(
   inputWidth  => 1
)
port map(
   
   clock             => mainClock,
   signalInput(0)    => pgVSync,
   signalOutput(0)   => pgVSyncMainClock
   
);




-- place text mode font rom ( 2048 x 8 )

fontPromInst: fontProm 
port map(
    clka    => pixelClock,
    addra   => fontRomA,
    douta   => fontRomDout
);

-- place text mode framebuffer ram ( 8192 x 32 )

txtfbRamWr(0)  <= cpuWrStrobe(0) and txtfbRAMCE;
txtfbRamWr(1)  <= cpuWrStrobe(1) and txtfbRAMCE;
txtfbRamWr(2)  <= cpuWrStrobe(2) and txtfbRAMCE;
txtfbRamWr(3)  <= cpuWrStrobe(3) and txtfbRAMCE;


txtfbRamInst: systemRam
port map(

    clka       => mainClock, 
    wea        => txtfbRamWr,
    addra      => cpuAOut( 12 downto 0 ),
    dina       => cpuDOut,
    douta      => txtfbRamDoutForCPU,
    
    clkb       => pixelClock,
    web        => "0000",
    addrb      => videoRamBA( 13 downto 1 ),
    dinb       => ( others => '0' ),
    doutb      => txtfbRamDoutForPixelGen

);

videoRamBDout   <= txtfbRamDoutForPixelGen( 15 downto 0 ) when videoRamBA( 0 ) = '0' else txtfbRamDoutForPixelGen( 31 downto 16 ); 

txtfbRamAccess:process( reset, mainClock )
begin

    if reset = '1' then
    
        txtfbRamReady <= '0';
        
    elsif rising_edge( mainClock ) then
    
        txtfbRamReady <= txtfbRAMCE;
    
    end if;

end process;


-- place system RAM ( 8192 x 32 ) bootloader, stack
   
systemRamWr(0) <= cpuWrStrobe(0) and systemRAMCE;
systemRamWr(1) <= cpuWrStrobe(1) and systemRAMCE;
systemRamWr(2) <= cpuWrStrobe(2) and systemRAMCE;
systemRamWr(3) <= cpuWrStrobe(3) and systemRAMCE;

systemRamInst: systemRam
port map(

    clka       => mainClock, 
    wea        => systemRamWr,
    addra      => cpuAOut( 12 downto 0 ),
    dina       => cpuDOut,
    douta      => systemRamDoutForCPU,
    
    clkb       => mainClock,
    web        => "0000",
    addrb      => ( others => '0' ),
    dinb       => ( others => '0' )
--    doutb      => 

);

systemRamAccess:process( reset, mainClock )
begin

    if reset = '1' then
    
        systemRamReady <= '0';
        
    elsif rising_edge( mainClock ) then
    
        systemRamReady <= systemRamCE;
    
    end if;

end process;


--Place txt pixel gen

pixelGenInst: pixelGenTxt
port map(
   reset           => reset,
   pgClock         => pixelClock,

   pgVSync         => pgVSync,
   pgHSync         => pgHSync,
   pgDe            => pgDe,
   pgR             => pgR,
   pgG             => pgG,
   pgB             => pgB,

   fontRomA        => fontRomA,
   fontRomDout     => fontRomDout,

   videoRamBA      => videoRamBA,
   videoRamBDout   => videoRamBDout,
        
   pgXCount          => pgXCount,
   pgYCount          => pgYCount,
   pgDeX             => pgDeX,
   pgDeY             => pgDeY,
   pgPreFetchLine    => pgPreFetchLine,
   pgFetchEnable     => pgFetchEnable,
      
   pgVideoMode       => vmMode( 3 downto 2 ),
   pgCursorX         => pgCursorX,        
   pgCursorY         => pgCursorY,
   
   --640 x 480 ( 25 / 125 MHz )

--   hBackPorch        => x"030",        --48
--   hActive           => x"280",        --640
--   hFrontPorch       => x"010",        --16
--   hSyncPulse        => x"060",        --96
   
--   vBackPorch        => x"021",        --33
--   vActive           => x"1e0",        --480
--   vFrontPorch       => x"00a",        --10
--   vSyncPulse        => x"002"         --2

   --1280 x 720 ( 64 / 320 MHz )
   
   hBackPorch        => x"050",        --80
   hActive           => x"500",        --1280
   hFrontPorch       => x"030",        --48
   hSyncPulse        => x"020",        --32
   
   vBackPorch        => x"00d",        --13
   vActive           => x"2d0",        --720
   vFrontPorch       => x"003",        --3
   vSyncPulse        => x"005"         --5
   
        
);   

-- place videomux

videoMuxInst:videoMux
port map( 

   --reset, clock
   resetn         => resetn,
   pixelClock     => pixelClock,
   
   --mux mode
   muxMode        => vmMode( 1 downto 0 ),
   
   --video inputs
   
   --text / sync
   
   pgHSync        => pgHSync,
   pgVSync        => pgVSync,
   pgDe           => pgDE,
   
   pgR            => pgR,
   pgG            => pgG,
   pgB            => pgB,
   
   --gfx
   pggR           => pggR,
   pggG           => pggG,
   pggB           => pggB,
   
   --video output
   vgaHS          => vgaHS,
   vgaVS          => vgaVS,
   vgaDE          => vgaDE,
                
   vgaR           => vgaRed,
   vgaG           => vgaGreen,
   vgaB           => vgaBlue
   
);


-- place nekoRv
      
-- bus signals
    cpuAOut           <= cpuAOutFull( 31 downto 2 );

-- chip selects
   systemRAMCE    <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 28 ) = x"0" else '0';
   txtfbRAMCE     <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 28 ) = x"1" else '0';
   rootRegsCE     <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f00" else '0';   
   uartCE         <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f04" else '0';

--    sdramDMACE      <= '1' when ( cpuMemValid = '1'  ) and cpuAOutFull( 31 downto 28 ) = x"2" else '0';
--    fastRamCE       <= '1' when ( cpuMemValid = '1'  ) and cpuAOutFull( 31 downto 28 ) = x"3" else '0';
         

--    spriteGenCE     <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f01" else '0';
   
--    blitterRegsCE   <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f02" else '0';
    
--    usbHostCE       <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f03" else '0';


--    spiCE           <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f05" else '0';

--    i2sCE           <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f06" else '0';

    
--    sdramDmaRegsCE  <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f08" else '0';
  
--    pggRegsCE       <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f09" else '0';
    
--    fpAluCE         <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f0a" else '0';
    
  
-- bus slaves ready signals mux
   cpuMemReady       <= systemRamReady when systemRAMCE = '1'
                        else txtfbRamReady when txtfbRamCE = '1'
                        else rootRegsReady when rootRegsCE = '1' 
                        else uartReady when uartCE = '1' 
--                        else spiReady when spiCE = '1' 
--                        else usbHostReady when usbHostCE = '1' 
--                        else registersReady when registersCE = '1' 
--                        else sdramDMAReady when sdramDMACE = '1' 
--                        else fastRamReady when fastRamCE = '1' 
--                        else blitterRegsReady when blitterRegsCE = '1' 
--                        else spriteGenReady when spriteGenCE = '1' 
--                        else i2sReady when i2sCE = '1' 
--                        else flashSpiReady when flashSpiCE = '1'
--                        else sdramDmaRegsReady when sdramDmaRegsCE = '1'  
--                        else pggRegsReady when pggRegsCE = '1' 
--                        else fpAluReady when fpAluCE = '1' 
                        else '1';


-- bus slaves data outputs mux
   cpuDin            <= systemRamDoutForCPU                       when cpuAOutFull( 31 downto 28 ) = x"0" else 
                        txtfbRamDoutForCPU                        when cpuAOutFull( 31 downto 28 ) = x"1" else
                        rootRegsDoutForCPU                        when cpuAOutFull( 31 downto 20 ) = x"f00" else 
                        uartDoutForCPU                            when cpuAOutFull( 31 downto 20 ) = x"f04" else
--                        registersDoutForCPU                       when cpuAOutFull( 31 downto 20 ) = x"f00" else
--                        sdramDMADoutForCPU                        when cpuAOutFull( 31 downto 28 ) = x"2"  else
--                        fastRamDoutForCPU                         when cpuAOutFull( 31 downto 28 ) = x"3"  else
--                        spriteGenDoutForCPU                       when cpuAOutFull( 31 downto 20 ) = x"f01" else
--                        blitterRegsDoutForCPU                     when cpuAOutFull( 31 downto 20 ) = x"f02" else
--                        usbHostDoutForCPU                         when cpuAOutFull( 31 downto 20 ) = x"f03" else 
--                        spiDoutForCPU                             when cpuAOutFull( 31 downto 20 ) = x"f05" else
--                        i2sDoutForCPU                             when cpuAOutFull( 31 downto 20 ) = x"f06" else 
--                        flashSpiDoutForCPU                        when cpuAOutFull( 31 downto 20 ) = x"f07" else  
--                        sdramDmaRegsDoutForCPU                    when cpuAOutFull( 31 downto 20 ) = x"f08" else                        
--                        pggRegsDoutForCPU                         when cpuAOutFull( 31 downto 20 ) = x"f09" else
--                        fpAluDoutForCPU                           when cpuAOutFull( 31 downto 20 ) = x"f0a" else  
                        x"00000000";

-- the CPU
  
nekoRvInst:nekoRv 
port map( 
    
    clk             => mainClock,
    reset           => cpuReset,
    
    mtimeIrq        => cpuMtimeIrq,
    
    a               => cpuAOutFull,
    din             => cpuDin,
    dout            => cpuDOut,
    
    be              => cpuMemValid,
    ready           => cpuMemReady,
    wr              => cpuWr,
    dataMask        => cpuDataMask,
    
    instrFetchCycle => cpuMemInstr
);
  
--emulate cpuWrStrobe
cpuWrStrobe       <=  cpuDataMask when cpuWr = '1' else "0000";



--cpu resetgen process
cpuResetGen: process( mainClock, resetn )

begin
    
   if resetn = '0' then
   
      cpuReset             <= '1';
      cpuResetGenCounter   <= x"ffff";
   
   else
   
      if rising_edge( mainClock ) then
   
         if cpuResetGenCounter /= x"0000" then
   
            cpuReset            <= '1';
            cpuResetGenCounter  <= std_logic_vector( unsigned( cpuResetGenCounter ) - 1 );
      
         else
      
            cpuReset            <= '0';
      
         end if;
         
      end if;
      
   end if;
   
end process;

-- place root regs
rootRegistersInst:rootRegisters
port map(
   --cpu interface
   reset       => reset,
   clock       => mainClock,
   a           => cpuAOut( 15 downto 0 ),
   din         => cpuDOut,
   dout        => rootRegsDOutForCPU,
   
   ce          => rootRegsCE,
   wr          => cpuWr,
   dataMask    => cpuDataMask,
   
   ready       => rootRegsReady,
  
   --video mode ( to be moved to vga regs )
   vmMode      => vmMode,
   
   --gpio
   gpi         => gpi,
   gpo         => gpo,
      
   --vsync for frame timer
   vsync       => pgVSyncMainClock,
   
   --mtime irq out
   mtimeIrq    => cpuMtimeIrq
);


-- place UART

UARTInst: UART
port map(
  reset    => reset,
  clock    => mainClock,     
  
  a        => cpuAOut( 15 downto 0 ),
  din      => cpuDOut,
  dout     => uartDoutForCPU,
  ce       => uartCE,
  wr       => cpuWr,
  dataMask => cpuDataMask,
  ready    => uartReady,        
    
  uartTXD  => uartTX,
  uartRXD  => uartRX
  
);  


end Behavioral;
