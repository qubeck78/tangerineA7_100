

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
   
   --axi master bus
   m00_axi_aclk:     in  std_logic;
   m00_axi_aresetn:  in  std_logic;

   m00_axi_awaddr:   out std_logic_vector( 31 downto 0 );
   m00_axi_awprot:   out std_logic_vector( 2 downto 0 );
   m00_axi_awvalid:  out std_logic;
   m00_axi_awready:  in  std_logic;
   m00_axi_wdata:    out std_logic_vector( 127 downto 0 );
   m00_axi_wstrb:    out std_logic_vector( 15 downto 0 );
   m00_axi_wvalid:   out std_logic;
   m00_axi_wready:   in  std_logic;
   m00_axi_bresp:    in  std_logic_vector( 1 downto 0) ;
   m00_axi_bvalid:   in  std_logic;
   m00_axi_bready:   out std_logic;
   
   m00_axi_araddr:   out std_logic_vector( 31 downto 0 );
   m00_axi_arprot:   out std_logic_vector( 2 downto 0 );
   m00_axi_arvalid:  out std_logic;
   m00_axi_arready:  in  std_logic;
   m00_axi_rdata:    in  std_logic_vector( 127 downto 0 );
   m00_axi_rresp:    in  std_logic_vector( 1 downto 0 );
   m00_axi_rvalid:   in  std_logic;
   m00_axi_rready:   out std_logic;
   
   -- Extended AXI Master Signals
   m00_axi_arid:     out std_logic_vector ( 3 downto 0 );
   m00_axi_arlen:    out std_logic_vector ( 7 downto 0 );
   m00_axi_arsize:   out std_logic_vector ( 2 downto 0 );
   m00_axi_arburst:  out std_logic_vector ( 1 downto 0 );
   m00_axi_arlock:   out std_logic;
   m00_axi_arcache:  out std_logic_vector ( 3 downto 0 );
   m00_axi_rid:      in  std_logic_vector ( 3 downto 0 );
   m00_axi_rlast:    in  std_logic;
   
   m00_axi_awid:     out std_logic_vector ( 3 downto 0 );
   m00_axi_awlen:    out std_logic_vector ( 7 downto 0 );
   m00_axi_awsize:   out std_logic_vector ( 2 downto 0 );
   m00_axi_awburst:  out std_logic_vector ( 1 downto 0 );
   m00_axi_awlock:   out std_logic;
   m00_axi_wlast:    out std_logic;
   m00_axi_awcache:  out std_logic_vector ( 3 downto 0 );
   
    
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

-- 256K of fast ram
component fastRam is
port(
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);
end component;

-- vga

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
   gfxFbRamA:        out std_logic_vector( 10 downto 0 );    --2 buffers, 1024 long words each

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

--axi DMA controller
component axiDMA is
port ( 

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

   --ch0 - cpu access to axi ram
   ch0A:             in    std_logic_vector( 31 downto 0 );
   ch0DIn:           in    std_logic_vector( 31 downto 0 );
   ch0DOut:          out   std_logic_vector( 31 downto 0 );
   
   ch0CE:            in    std_logic;
   ch0Wr:            in    std_logic;
   ch0DataMask:      in    std_logic_vector( 3 downto 0 );
   
   ch0Ready:         out   std_logic;
   
   --ch1 - gfx display, highest priority: 0
   ch1DmaRequest:       in    std_logic_vector( 1 downto 0 );
   ch1DmaPointerReset:  in    std_logic;
   
   ch1BufClock:         in    std_logic;
   ch1BufA:             in    std_logic_vector( 10 downto 0 );
   ch1BufDOut:          out   std_logic_vector( 31 downto 0 );

   --axi master bus
   m00_axi_aclk:     in  std_logic;
   m00_axi_aresetn:  in  std_logic;

   m00_axi_awaddr:   out std_logic_vector( 31 downto 0 );
   m00_axi_awprot:   out std_logic_vector( 2 downto 0 );
   m00_axi_awvalid:  out std_logic;
   m00_axi_awready:  in  std_logic;
   m00_axi_wdata:    out std_logic_vector( 127 downto 0 );
   m00_axi_wstrb:    out std_logic_vector( 15 downto 0 );
   m00_axi_wvalid:   out std_logic;
   m00_axi_wready:   in  std_logic;
   m00_axi_bresp:    in  std_logic_vector( 1 downto 0) ;
   m00_axi_bvalid:   in  std_logic;
   m00_axi_bready:   out std_logic;
   
   m00_axi_araddr:   out std_logic_vector( 31 downto 0 );
   m00_axi_arprot:   out std_logic_vector( 2 downto 0 );
   m00_axi_arvalid:  out std_logic;
   m00_axi_arready:  in  std_logic;
   m00_axi_rdata:    in  std_logic_vector( 127 downto 0 );
   m00_axi_rresp:    in  std_logic_vector( 1 downto 0 );
   m00_axi_rvalid:   in  std_logic;
   m00_axi_rready:   out std_logic;
   
   -- Extended AXI Master Signals
   m00_axi_arid:     out std_logic_vector ( 3 downto 0 );
   m00_axi_arlen:    out std_logic_vector ( 7 downto 0 );
   m00_axi_arsize:   out std_logic_vector ( 2 downto 0 );
   m00_axi_arburst:  out std_logic_vector ( 1 downto 0 );
   m00_axi_arlock:   out std_logic;
   m00_axi_arcache:  out std_logic_vector ( 3 downto 0 );
   m00_axi_rid:      in  std_logic_vector ( 3 downto 0 );
   m00_axi_rlast:    in  std_logic;
   
   m00_axi_awid:     out std_logic_vector ( 3 downto 0 );
   m00_axi_awlen:    out std_logic_vector ( 7 downto 0 );
   m00_axi_awsize:   out std_logic_vector ( 2 downto 0 );
   m00_axi_awburst:  out std_logic_vector ( 1 downto 0 );
   m00_axi_awlock:   out std_logic;
   m00_axi_wlast:    out std_logic;
   m00_axi_awcache:  out std_logic_vector ( 3 downto 0 )
   

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

--SPI
component SPI is
port(

   --cpu interface
   reset:      in  std_logic;
   clock:      in  std_logic;

   a:          in    std_logic_vector( 15 downto 0 );
   din:        in    std_logic_vector( 31 downto 0 );
   dout:       out   std_logic_vector( 31 downto 0 );
   
   ce:         in    std_logic;
   wr:         in    std_logic;
   dataMask:   in    std_logic_vector( 3 downto 0 );
   
   ready:      out   std_logic;
   
   --spi interface
   sclk:       out std_logic;
   mosi:       out std_logic;
   miso:       in  std_logic
   
);
end component;

--signals

signal reset:  std_logic;

--system ram signals
signal systemRAMCE:              std_logic;
signal systemRamReady:           std_logic;
signal systemRamDoutForCPU:      std_logic_vector( 31 downto 0 );
signal systemRamWr:              std_logic_vector( 3 downto 0 ); 

--text framebuffer signals
signal txtfbRAMCE:               std_logic;
signal txtfbRamReady:            std_logic;
signal txtfbRamDoutForCPU:       std_logic_vector( 31 downto 0 );
signal txtfbRamDoutForPixelGen:  std_logic_vector( 31 downto 0 );
signal txtfbRamWr:               std_logic_vector( 3 downto 0 ); 

signal txtFbRamBClock:           std_logic;
signal txtFbRamBA:               std_logic_vector( 12 downto 0 );
signal txtFbRamBDOut:            std_logic_vector( 31 downto 0 );


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
signal cpuResetGenCounter: std_logic_vector( 15 downto 0 ); 

--root registers signals
signal rootRegsCE:         std_logic;
signal rootRegsDoutForCPU: std_logic_vector( 31 downto 0 );
signal rootRegsReady:      std_logic;
signal gpi:                std_logic_vector( 31 downto 0 );
signal gpo:                std_logic_vector( 31 downto 0 );

--uart signals
signal uartCE:          std_logic;
signal uartDoutForCPU:  std_logic_vector( 31 downto 0 );
signal uartReady:       std_logic;

--spi signals
signal spiCE:            std_logic;
signal spiDoutForCPU:    std_logic_vector( 31 downto 0 );
signal spiReady:         std_logic;

signal spiSClk:          std_logic;
signal spiMOSI:          std_logic;
signal spiMISO:          std_logic; 

--vga signals
signal vgaCE:           std_logic;
signal vgaDOutForCPU:   std_logic_vector( 31 downto 0 );
signal vgaReady:        std_logic;

signal vgaVSync:        std_logic;

--vsync signal synchronised to cpu clock domain
signal vgaVSyncMainClock:   std_logic;

--dma RAM signals
signal dmaRamCE:           std_logic;
signal dmaRamDOutForCPU:   std_logic_vector( 31 downto 0 );
signal dmaRamReady:        std_logic;

signal dmaRegsCE:          std_logic;
signal dmaRegsDOutForCPU:  std_logic_vector( 31 downto 0 );
signal dmaRegsReady:       std_logic;

--dma ch1 - vga
signal ch1DmaRequest:      std_logic_vector( 1 downto 0 );
signal ch1BufClock:        std_logic;
signal ch1BufA:            std_logic_vector( 10 downto 0 );
signal ch1BufDOut:         std_logic_vector( 31 downto 0 );

--fast RAM signals
signal fastRamCE:           std_logic;
signal fastRamReady:        std_logic;
signal fastRamDOutForCPU:   std_logic_vector( 31 downto 0 );
signal fastRamWr:           std_logic_vector( 3 downto 0 ); 


begin

--positive reset

reset    <= not resetn;

--drive unused signals, ports


-- assign gpi/gpo

gpi         <= ( others => '0' );

leds( 0 )   <= gpo( 30 );
leds( 1 )   <= gpo( 31 );

sdMciDat(3) <= gpo( 0 );   --sd card cs


-- sync VSync to main clock

inputSyncVSInst:inputSync
generic map
(
   inputWidth  => 1
)
port map(
   
   clock             => mainClock,
   signalInput(0)    => vgaVSync,
   signalOutput(0)   => vgaVSyncMainClock
   
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
    
    clkb       => txtFbRamBClock,
    web        => "0000",
    addrb      => txtFbRamBA,
    dinb       => ( others => '0' ),
    doutb      => txtFbRamBDOut

);


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

-- place fast ram

fastRamWr(0) <= cpuWrStrobe(0) and fastRamCE;
fastRamWr(1) <= cpuWrStrobe(1) and fastRamCE;
fastRamWr(2) <= cpuWrStrobe(2) and fastRamCE;
fastRamWr(3) <= cpuWrStrobe(3) and fastRamCE;

-- 256K of fast ram
fastRamInst:fastRam
port map(
    clka    => mainClock,
    wea     => fastRamWr,
    addra   => cpuAOut( 15 downto 0 ),
    dina    => cpuDOut,
    douta   => fastRamDoutForCPU
);

fastRamAccess:process( reset, mainClock )
begin

    if reset = '1' then
    
        fastRamReady <= '0';
        
    elsif rising_edge( mainClock ) then
    
        fastRamReady <= fastRamCE;
    
    end if;

end process;



-- place vga

-- buffer vsync in signal, which is passed to frame timer after sync with main clock
vgaVS <= vgaVSync;

vgaInst:vga
port map( 

   --cpu interface ( registers )
   reset          => reset,
   clock          => mainClock,
   a              => cpuAOut( 15 downto 0 ),
   din            => cpuDOut,
   dout           => vgaDOutForCPU,
   
   ce             => vgaCE,
   wr             => cpuWr,
   dataMask       => cpuDataMask,
   
   ready          => vgaReady,

   --pixel clock
   pixelClock     => pixelClock,

   --block ram interface ( text mode frame buffer ram )
   txtFbRamClock  => txtFbRamBClock,
   txtFbRamA      => txtFbRamBA,
   txtFbRamDIn    => txtFbRamBDOut,

   --dma ch1 interface ( gfx mode line data buffer, dma requests )
   gfxFbRamClock  => ch1BufClock,
   gfxFbRamDIn    => ch1BufDOut,
   gfxFbRamA      => ch1BufA,
    --2 dma requests
   vgaDMARequest  => ch1DmaRequest,

   --video output ( VGA )
   vgaRed         => vgaRed,
   vgaGreen       => vgaGreen,
   vgaBlue        => vgaBlue,
   vgaHS          => vgaHS,
   vgaVS          => vgaVSync,
   vgaDE          => vgaDE
     
);



-- place nekoRv
      
-- bus signals
    cpuAOut           <= cpuAOutFull( 31 downto 2 );

-- chip selects
   systemRAMCE    <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 28 ) = x"0" else '0';
   txtfbRAMCE     <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 28 ) = x"1" else '0';
   dmaRamCE       <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 28 ) = x"2" else '0';
   fastRamCE      <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 28 ) = x"3" else '0';
   rootRegsCE     <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f00" else '0';   
   vgaCE          <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f01" else '0';   
   dmaRegsCE      <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f02" else '0';
   uartCE         <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f04" else '0';
   spiCE          <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f05" else '0';
   
--    fastRamCE       <= '1' when ( cpuMemValid = '1'  ) and cpuAOutFull( 31 downto 28 ) = x"3" else '0';
--    blitterRegsCE   <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f02" else '0';
--    usbHostCE       <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f03" else '0';
--    i2sCE           <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f06" else '0';  
--    fpAluCE         <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f0a" else '0';
    
  
-- bus slaves ready signals mux
   cpuMemReady       <= systemRamReady when systemRAMCE = '1'
                        else txtfbRamReady when txtfbRamCE = '1'
                        else dmaRamReady when dmaRamCE = '1'
                        else fastRamReady when fastRamCE = '1' 
                        else rootRegsReady when rootRegsCE = '1' 
                        else vgaReady  when vgaCE = '1'
                        else dmaRegsReady when dmaRegsCE = '1'  
                        else uartReady when uartCE = '1' 
                        else spiReady when spiCE = '1' 
--                        else fastRamReady when fastRamCE = '1' 
--                        else blitterRegsReady when blitterRegsCE = '1' 
--                        else usbHostReady when usbHostCE = '1' 
--                        else i2sReady when i2sCE = '1' 
--                        else fpAluReady when fpAluCE = '1' 
                        else '1';


-- bus slaves data outputs mux
   cpuDin            <= systemRamDoutForCPU                       when cpuAOutFull( 31 downto 28 ) = x"0" else 
                        txtfbRamDoutForCPU                        when cpuAOutFull( 31 downto 28 ) = x"1" else
                        dmaRamDoutForCPU                          when cpuAOutFull( 31 downto 28 ) = x"2" else
                        fastRamDoutForCPU                         when cpuAOutFull( 31 downto 28 ) = x"3" else
                        rootRegsDoutForCPU                        when cpuAOutFull( 31 downto 20 ) = x"f00" else 
                        vgaDoutForCPU                             when cpuAOutFull( 31 downto 20 ) = x"f01" else 
                        dmaRegsDOutForCPU                         when cpuAOutFull( 31 downto 20 ) = x"f02" else
                        uartDoutForCPU                            when cpuAOutFull( 31 downto 20 ) = x"f04" else
                        spiDoutForCPU                             when cpuAOutFull( 31 downto 20 ) = x"f05" else
--                        fastRamDoutForCPU                         when cpuAOutFull( 31 downto 28 ) = x"3"  else
--                        blitterRegsDoutForCPU                     when cpuAOutFull( 31 downto 20 ) = x"f02" else
--                        usbHostDoutForCPU                         when cpuAOutFull( 31 downto 20 ) = x"f03" else 
--                        i2sDoutForCPU                             when cpuAOutFull( 31 downto 20 ) = x"f06" else 
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



axiDMAInst:axiDMA
port map( 

   --cpu interface ( registers )
   reset       => reset,
   clock       => mainClock,
   a           => cpuAOut( 15 downto 0 ),
   din         => cpuDOut,
   dout        => dmaRegsDOutForCPU,
   
   ce          => dmaRegsCE,
   wr          => cpuWr,
   dataMask    => cpuDataMask,
   
   ready       => dmaRegsReady,

   --ch0 - cpu access to axi ram
   ch0A                 => cpuAOutFull,
   ch0DIn               => cpuDOut,
   ch0DOut              => dmaRamDoutForCPU,
   
   ch0CE                => dmaRamCE,
   ch0Wr                => cpuWr,
   ch0DataMask          => cpuDataMask,
   
   ch0Ready             => dmaRamReady,
   
   --ch1 - gfx display, highest priority: 0
   ch1DmaRequest        => ch1DmaRequest,
   ch1DmaPointerReset   => vgaVSyncMainClock,
   
   ch1BufClock          => ch1BufClock,
   ch1BufA              => ch1BufA,
   ch1BufDOut           => ch1BufDOut,

   --axi master bus
   m00_axi_aclk      => m00_axi_aclk,
   m00_axi_aresetn   => m00_axi_aresetn,

   m00_axi_awaddr    => m00_axi_awaddr,
   m00_axi_awprot    => m00_axi_awprot,
   m00_axi_awvalid   => m00_axi_awvalid,
   m00_axi_awready   => m00_axi_awready,
   m00_axi_wdata     => m00_axi_wdata,
   m00_axi_wstrb     => m00_axi_wstrb,
   m00_axi_wvalid    => m00_axi_wvalid,
   m00_axi_wready    => m00_axi_wready,
   m00_axi_bresp     => m00_axi_bresp,
   m00_axi_bvalid    => m00_axi_bvalid,
   m00_axi_bready    => m00_axi_bready,
   
   m00_axi_araddr    => m00_axi_araddr,
   m00_axi_arprot    => m00_axi_arprot,
   m00_axi_arvalid   => m00_axi_arvalid,
   m00_axi_arready   => m00_axi_arready,
   m00_axi_rdata     => m00_axi_rdata,
   m00_axi_rresp     => m00_axi_rresp,
   m00_axi_rvalid    => m00_axi_rvalid,
   m00_axi_rready    => m00_axi_rready,
   
   -- Extended AXI Master Signals
   m00_axi_arid      => m00_axi_arid,
   m00_axi_arlen     => m00_axi_arlen,
   m00_axi_arsize    => m00_axi_arsize,
   m00_axi_arburst   => m00_axi_arburst,
   m00_axi_arlock    => m00_axi_arlock,
   m00_axi_arcache   => m00_axi_arcache,
   m00_axi_rid       => m00_axi_rid,
   m00_axi_rlast     => m00_axi_rlast,
   
   m00_axi_awid      => m00_axi_awid,
   m00_axi_awlen     => m00_axi_awlen,
   m00_axi_awsize    => m00_axi_awsize,
   m00_axi_awburst   => m00_axi_awburst,
   m00_axi_awlock    => m00_axi_awlock,
   m00_axi_wlast     => m00_axi_wlast,
   m00_axi_awcache   => m00_axi_awcache
   
);




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
     
   --gpio
   gpi         => gpi,
   gpo         => gpo,
      
   --vsync for frame timer
   vsync       => vgaVSyncMainClock,
   
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

-- place SD card SPI   
-- spi cs assigned in gpo section

sdMciClk    <= spiSClk;
sdMciCmd    <= spiMOSI;
spiMISO     <= sdMciDat( 0 );
sdMciDat(2 downto 0 )   <= "ZZZ";
   
SPIInst:SPI
port map(

   --cpu interface
   reset       => reset,
   clock       => mainClockD2,

   a           => cpuAOut( 15 downto 0 ),
   din         => cpuDOut,
   dout        => spiDoutForCPU,
   
   ce          => spiCE,
   wr          => cpuWr,
   dataMask    => cpuDataMask,
   
   ready       => spiReady,
   
   --spi interface
   sclk        => spiSClk,
   mosi        => spiMOSI,
   miso        => spiMISO
   
); 

end Behavioral;
