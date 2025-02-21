library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity axiDMA is
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
   
   --block ram interface - line buffer
   ch1BufClock:      in    std_logic;
   ch1BufA:          in    std_logic_vector( 10 downto 0 );
   ch1BufDOut:       out   std_logic_vector( 31 downto 0 );

   --ch2 - block transfers triggered via registers
   
   --block ram interface - transfer buffer
   ch2BufClock:      out   std_logic;
   ch2BufWE:         out   std_logic_vector( 15 downto 0 );
   ch2BufA:          out   std_logic_vector( 7 downto 0 );
   ch2BufDin:        in    std_logic_vector( 127 downto 0 );
   ch2BufDOut:       out   std_logic_vector( 127 downto 0 );


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
end axiDMA;

architecture Behavioral of axiDMA is

--components

component dmaCh1BufRam is
port(
    clka:   in    std_logic;
    wea:    in    std_logic_vector( 0 downto 0 );
    addra:  in    std_logic_vector( 8 downto 0 );
    dina:   in    std_logic_vector( 127 downto 0 );
    douta:  OUT   std_logic_vector( 127 downto 0 );

    clkb:   in    std_logic;
    web:    in    std_logic_vector( 0 downto 0 );
    addrb:  in    std_logic_vector( 10 downto 0 );
    dinb:   in    std_logic_vector( 31 downto 0 );
    doutb:  OUT   std_logic_vector( 31 downto 0 )
);
end component;

--cache data ram
component cacheDataRam is
port(

   --cpu side
   clka:    in    std_logic;
   wea:     in    std_logic_vector( 3 downto 0 );
   addra:   in    std_logic_vector( 11 downto 0 );
   dina:    in    std_logic_vector( 31 downto 0 );
   douta:   out   std_logic_vector( 31 downto 0 );
   
   --ddr side
   clkb:    in    std_logic;
   web:     in    std_logic_vector( 15 downto 0 );
   addrb:   in    std_logic_vector( 9 downto 0 );
   dinb:    in    std_logic_vector( 127 downto 0 );
   doutb:   out   std_logic_vector( 127 downto 0 )
);
end component;

component cacheTagRam is
port(
   clka:    in    std_logic;
   wea:     in    std_logic_vector( 0 downto 0 );
   addra:   in    std_logic_vector( 7 downto 0 );
   dina:    in    std_logic_vector( 15 downto 0 );
   douta:   out   std_logic_vector( 15 downto 0 )
);
end component;


--signals
signal resetn:          std_logic;

--registers

type   regState_T is ( rsWaitForRegAccess, rsWaitForBusCycleEnd );
signal registerState:       regState_T;

--axi dma fsm
type   axiState_T is ( asIdle, asCh0Read0, asCh0Read1, 
                               asCh0Write0, asCh0Write1, asCh0Write2,
                               asCh0Cache0, 
                               asCh0CacheFill0, asCh0CacheFill1, asCh0CacheFill2, asCh0CacheFill3, asCh0CacheFill4, asCh0CacheFill5,   
                               asCh0TransactionDone,
                               asCh1Read0, asCh1Read1, asCh1Read2, asCh1Read3,
                               asCh2Fill0, asCh2Fill1, asCh2Fill2,
                               asCh2Read0, asCh2Read1, asCh2Read2,
                               asCh2Write0, asCh2Write1, asCh2Write2,
                               asCh2ReadShift0, asCh2ReadShift1, asCh2ReadShift2, asCh2ReadShift3
                               );

signal axiState:       axiState_T;
signal axiStateDebug:   std_logic_vector( 7 downto 0 );

--ch1 buf dma side

signal ch1BufAA:     std_logic_vector( 8 downto 0 );
signal ch1BufAWr:    std_logic_vector( 0 downto 0 );
signal ch1BufADin:   std_logic_vector( 127 downto 0 );

--ch1 signals
signal ch1DmaRequestLatched:  std_logic_vector( 1 downto 0 );
signal ch1DmaPointer:         std_logic_vector( 31 downto 0 );
signal ch1DmaBufPointer:      std_logic_vector( 8 downto 0 );

--ch1 registers
signal ch1DmaPointerStart:    std_logic_vector( 31 downto 0 );
signal ch1DmaRequestLength:   std_logic_vector( 7 downto 0 );
signal ch1DmaRequestPtrAdd:  std_logic_vector( 15 downto 0 );

--cache signals

signal cacheEnabled:       std_logic;
signal triggerCacheFlush:  std_logic;

--cache ram
--way0
signal cacheWay0WEa:       std_logic_vector( 3 downto 0 );
signal cacheWay0Aa:        std_logic_vector( 11 downto 0 );
signal cacheWay0DIna:      std_logic_vector( 31 downto 0 );
signal cacheWay0DOuta:     std_logic_vector( 31 downto 0 );
   
signal cacheWay0WEb:       std_logic_vector( 15 downto 0 );
signal cacheWay0Ab:        std_logic_vector( 9 downto 0 );
signal cacheWay0DInb:      std_logic_vector( 127 downto 0);
signal cacheWay0DOutb:     std_logic_vector( 127 downto 0 );

--way1
signal cacheWay1WEa:       std_logic_vector( 3 downto 0 );
signal cacheWay1Aa:        std_logic_vector( 11 downto 0 );
signal cacheWay1DIna:      std_logic_vector( 31 downto 0 );
signal cacheWay1DOuta:     std_logic_vector( 31 downto 0 );
   
signal cacheWay1WEb:       std_logic_vector( 15 downto 0 );
signal cacheWay1Ab:        std_logic_vector( 9 downto 0 );
signal cacheWay1DInb:      std_logic_vector( 127 downto 0);
signal cacheWay1DOutb:     std_logic_vector( 127 downto 0 );

--way2
signal cacheWay2WEa:       std_logic_vector( 3 downto 0 );
signal cacheWay2Aa:        std_logic_vector( 11 downto 0 );
signal cacheWay2DIna:      std_logic_vector( 31 downto 0 );
signal cacheWay2DOuta:     std_logic_vector( 31 downto 0 );
   
signal cacheWay2WEb:       std_logic_vector( 15 downto 0 );
signal cacheWay2Ab:        std_logic_vector( 9 downto 0 );
signal cacheWay2DInb:      std_logic_vector( 127 downto 0);
signal cacheWay2DOutb:     std_logic_vector( 127 downto 0 );

--way3
signal cacheWay3WEa:       std_logic_vector( 3 downto 0 );
signal cacheWay3Aa:        std_logic_vector( 11 downto 0 );
signal cacheWay3DIna:      std_logic_vector( 31 downto 0 );
signal cacheWay3DOuta:     std_logic_vector( 31 downto 0 );
   
signal cacheWay3WEb:       std_logic_vector( 15 downto 0 );
signal cacheWay3Ab:        std_logic_vector( 9 downto 0 );
signal cacheWay3DInb:      std_logic_vector( 127 downto 0);
signal cacheWay3DOutb:     std_logic_vector( 127 downto 0 );

--tag ram
signal cacheTagWay0We:     std_logic;
signal cacheTagWay0A:      std_logic_vector( 7 downto 0 );
signal cacheTagWay0DIn:    std_logic_vector( 15 downto 0 );
signal cacheTagWay0DOut:   std_logic_vector( 15 downto 0 );

signal cacheTagWay1We:     std_logic;
signal cacheTagWay1A:      std_logic_vector( 7 downto 0 );
signal cacheTagWay1DIn:    std_logic_vector( 15 downto 0 );
signal cacheTagWay1DOut:   std_logic_vector( 15 downto 0 );

signal cacheTagWay2We:     std_logic;
signal cacheTagWay2A:      std_logic_vector( 7 downto 0 );
signal cacheTagWay2DIn:    std_logic_vector( 15 downto 0 );
signal cacheTagWay2DOut:   std_logic_vector( 15 downto 0 );

signal cacheTagWay3We:     std_logic;
signal cacheTagWay3A:      std_logic_vector( 7 downto 0 );
signal cacheTagWay3DIn:    std_logic_vector( 15 downto 0 );
signal cacheTagWay3DOut:   std_logic_vector( 15 downto 0 );

--cache valid per page/way

signal cacheValidWay0:     std_logic_vector( 255 downto 0 );
signal cacheValidWay1:     std_logic_vector( 255 downto 0 );
signal cacheValidWay2:     std_logic_vector( 255 downto 0 );
signal cacheValidWay3:     std_logic_vector( 255 downto 0 );

type cachePageWayCnt_t  is array( 255 downto 0 ) of std_logic_vector( 1 downto 0 );
signal cachePageWayCounter: cachePageWayCnt_t;
   
--cache hit
signal cacheHitWay0:       std_logic;
signal cacheHitWay1:       std_logic;
signal cacheHitWay2:       std_logic;
signal cacheHitWay3:       std_logic;

--ch2 fast, block transfer

signal ch2TransferLength:     std_logic_vector( 7 downto 0 );
signal ch2TransferCounter:    std_logic_vector( 7 downto 0 );
signal ch2BufPointer:         std_logic_vector( 7 downto 0 );
signal ch2Input0:             std_logic_vector( 127 downto 0 );
signal ch2SaAddress:          std_logic_vector( 31 downto 0 );
signal ch2SaPointer:          std_logic_vector( 31 downto 0 );
signal ch2SaRowWidth:         std_logic_vector( 15 downto 0 );
signal ch2DaAddress:          std_logic_vector( 31 downto 0 );
signal ch2DaPointer:          std_logic_vector( 31 downto 0 );
signal ch2DaRowWidth:         std_logic_vector( 15 downto 0 );
signal ch2DaFirstWriteMask:   std_logic_vector( 15 downto 0 );
signal ch2DaLastWriteMask:    std_logic_vector( 15 downto 0 );
signal ch2FirstDataBeat:      std_logic;
signal ch2PreviousData:       std_logic_vector( 127 downto 0 );

-- 00 - fill da with value in ch2Input0
-- 01 - read sa to buffer
-- 02 - read sa to buffer and shift right
-- 03 - write buffer to da

signal ch2Command:            std_logic_vector( 7 downto 0 );
signal ch2DmaRequest:         std_logic;
signal ch2DmaRequestLatched:  std_logic;
signal ch2Ready:              std_logic;


begin

-- negative reset
resetn   <= not reset;

--clock for ch2 buffer ram
ch2BufClock    <= clock;



--set unused signals, ports

--place ch1 buf ram

dmaCh1BufRamInst:dmaCh1BufRam
port map(
      clka     => m00_axi_aclk,
      wea      => ch1BufAWr,
      addra    => ch1BufAA,
      dina     => ch1BufADin,
--    douta:  OUT   std_logic_vector( 127 downto 0 );

      clkb     => ch1BufClock,
      web      => "0",
      addrb    => ch1BufA,
      dinb     => ( others => '0' ),
      doutb    => ch1BufDOut
);

--place cache ram
--way0

--             page address          --entry address in cache line
cacheWay0Aa <= ch0A( 13 downto 6 ) & ch0A( 5 downto 2 );
cacheWay1Aa <= ch0A( 13 downto 6 ) & ch0A( 5 downto 2 );
cacheWay2Aa <= ch0A( 13 downto 6 ) & ch0A( 5 downto 2 );
cacheWay3Aa <= ch0A( 13 downto 6 ) & ch0A( 5 downto 2 );

cacheWay0DIna  <= ch0DIn;
cacheWay1DIna  <= ch0DIn;
cacheWay2DIna  <= ch0DIn;
cacheWay3DIna  <= ch0DIn;

cacheDataRamW0Inst:cacheDataRam
port map(

   --cpu side
   clka     => clock,
   wea      => cacheWay0WEa,
   addra    => cacheWay0Aa,
   dina     => cacheWay0DIna,
   douta    => cacheWay0DOuta,
   
   --ddr side
   clkb     => clock,
   web      => cacheWay0WEb,
   addrb    => cacheWay0Ab,
   dinb     => cacheWay0DInb,
   doutb    => cacheWay0DOutb
);

--way1
cacheDataRamW1Inst:cacheDataRam
port map(

   --cpu side
   clka     => clock,
   wea      => cacheWay1WEa,
   addra    => cacheWay1Aa,
   dina     => cacheWay1DIna,
   douta    => cacheWay1DOuta,
   
   --ddr side
   clkb     => clock,
   web      => cacheWay1WEb,
   addrb    => cacheWay1Ab,
   dinb     => cacheWay1DInb,
   doutb    => cacheWay1DOutb
);

--way2
cacheDataRamW2Inst:cacheDataRam
port map(

   --cpu side
   clka     => clock,
   wea      => cacheWay2WEa,
   addra    => cacheWay2Aa,
   dina     => cacheWay2DIna,
   douta    => cacheWay2DOuta,
   
   --ddr side
   clkb     => clock,
   web      => cacheWay2WEb,
   addrb    => cacheWay2Ab,
   dinb     => cacheWay2DInb,
   doutb    => cacheWay2DOutb
);

--way3
cacheDataRamW3Inst:cacheDataRam
port map(

   --cpu side
   clka     => clock,
   wea      => cacheWay3WEa,
   addra    => cacheWay3Aa,
   dina     => cacheWay3DIna,
   douta    => cacheWay3DOuta,
   
   --ddr side
   clkb     => clock,
   web      => cacheWay3WEb,
   addrb    => cacheWay3Ab,
   dinb     => cacheWay3DInb,
   doutb    => cacheWay3DOutb
);

--tag ram

--             page address          
cacheTagWay0A     <= ch0A( 13 downto 6 );
cacheTagWay1A     <= ch0A( 13 downto 6 );
cacheTagWay2A     <= ch0A( 13 downto 6 );
cacheTagWay3A     <= ch0A( 13 downto 6 );

--tag stores high address bits + flags ( now 0's )
cacheTagWay0DIn   <= "00" & ch0A( 27 downto 14 );
cacheTagWay1DIn   <= "00" & ch0A( 27 downto 14 );
cacheTagWay2DIn   <= "00" & ch0A( 27 downto 14 );
cacheTagWay3DIn   <= "00" & ch0A( 27 downto 14 );

--way0
cacheTagRamW0Inst:cacheTagRam
port map(
   clka     => clock,
   wea(0)   => cacheTagWay0We,
   addra    => cacheTagWay0A,
   dina     => cacheTagWay0DIn,
   douta    => cacheTagWay0DOut
);

--way1
cacheTagRamW1Inst:cacheTagRam
port map(
   clka     => clock,
   wea(0)   => cacheTagWay1We,
   addra    => cacheTagWay1A,
   dina     => cacheTagWay1DIn,
   douta    => cacheTagWay1DOut
);

--way2
cacheTagRamW2Inst:cacheTagRam
port map(
   clka     => clock,
   wea(0)   => cacheTagWay2We,
   addra    => cacheTagWay2A,
   dina     => cacheTagWay2DIn,
   douta    => cacheTagWay2DOut
);

--way3
cacheTagRamW3Inst:cacheTagRam
port map(
   clka     => clock,
   wea(0)   => cacheTagWay3We,
   addra    => cacheTagWay3A,
   dina     => cacheTagWay3DIn,
   douta    => cacheTagWay3DOut
);

axiDMAMaster: process( m00_axi_aclk )
begin

   if rising_edge( m00_axi_aclk ) then
   
      if resetn = '0' then

         --axi
         --read channel

         m00_axi_arid            <= x"0";
         m00_axi_arlen           <= ( others => '0' );
         m00_axi_arsize          <= "100";   --128 bits
         m00_axi_arburst         <= "01";    --burst type: increment
         m00_axi_arlock          <= '0';
         m00_axi_arcache         <= "0011";  --0011  
         m00_axi_arprot          <= "000";   --data/secure/unprivileged
         
         m00_axi_araddr          <= ( others => '0' );
         m00_axi_arvalid         <= '0';
         m00_axi_rready          <= '0';

--       write channel
         m00_axi_awid            <= x"0";
         m00_axi_awlen           <= ( others => '0' );

         m00_axi_awsize          <= "100";   --128 bits

         m00_axi_awburst         <= "01";    --burst type: increment
         m00_axi_awlock          <= '0';
         m00_axi_awcache         <= "0011";  --0011  
         m00_axi_awprot          <= "000";   --data/secure/unprivileged
         
         m00_axi_awaddr          <= ( others => '0' );
         m00_axi_awvalid         <= '0';

         m00_axi_wvalid          <= '0';
         m00_axi_wdata           <= ( others => '0' );
         m00_axi_wstrb           <= ( others => '0' );
         m00_axi_wlast           <= '1';
         m00_axi_bready          <= '0';

--       fsm reset         
         axiState                <= asIdle;
         ch0Ready                <= '0';
         ch0Dout                 <= ( others => '0' );

--       ch1 buf, dma side
         ch1BufAA                <= ( others => '0' );
         ch1BufAWr               <= "0";
         ch1BufADin              <= ( others => '0') ;
         
--       ch1
         ch1DmaRequestLatched    <= ( others => '0' );
         ch1DmaBufPointer        <= ( others => '0' );

--       ch0 cache

--       way0
         cacheWay0WEa         <= ( others => '0' );
         cacheWay0WEb         <= ( others => '0' );
         cacheWay0Ab          <= ( others => '0' );
         cacheWay0DInb        <= ( others => '0' );

         cacheTagWay0We       <= '0';

         cacheValidWay0       <= ( others => '0' );

--       way1
         cacheWay1WEa         <= ( others => '0' );
         cacheWay1WEb         <= ( others => '0' );
         cacheWay1Ab          <= ( others => '0' );
         cacheWay1DInb        <= ( others => '0' );

         cacheTagWay1We       <= '0';

         cacheValidWay1       <= ( others => '0' );

--       way2

         cacheWay2WEa         <= ( others => '0' );
         cacheWay2WEb         <= ( others => '0' );
         cacheWay2Ab          <= ( others => '0' );
         cacheWay2DInb        <= ( others => '0' );

         cacheTagWay2We       <= '0';

         cacheValidWay2       <= ( others => '0' );

--       way3

         cacheWay3WEa         <= ( others => '0' );
         cacheWay3WEb         <= ( others => '0' );
         cacheWay3Ab          <= ( others => '0' );
         cacheWay3DInb        <= ( others => '0' );

         cacheTagWay3We       <= '0';

         cacheValidWay3       <= ( others => '0' );

--       cache hits
         cacheHitWay0         <= '0';
         cacheHitWay1         <= '0';
         cacheHitWay2         <= '0';
         cacheHitWay3         <= '0';

--       ch2 signals

         ch2DmaRequestLatched <= '0';
         ch2Ready             <= '1';
               
         ch2BufWE             <= ( others => '0' );
         ch2BufA              <= ( others => '0' );
         ch2BufDOut           <= ( others => '0' );


         axiStateDebug        <= x"00";   

      else

         --latch ch1 dma requests
         if ch1DmaRequest( 0 ) = '1' then
         
            ch1DmaRequestLatched( 0 ) <= '1';
        
         end if;
        
         if ch1DmaRequest( 1 ) = '1' then
         
            ch1DmaRequestLatched( 1 ) <= '1';
            
         end if;
        
         if ch1DmaPointerReset = '1' then
        
            ch1DmaPointer <= ch1DmaPointerStart;
        
         end if;
      
         if ch2DmaRequest = '1' then
         
            ch2DmaRequestLatched <= '1';
         
         end if;
         
         --check cache flush trigger
         if triggerCacheFlush = '1' then

            cacheValidWay0       <= ( others => '0' );
            cacheValidWay1       <= ( others => '0' );
            cacheValidWay2       <= ( others => '0' );
            cacheValidWay3       <= ( others => '0' );
         
         end if;
         
         
         case axiState is
         
            when asIdle =>

               
               m00_axi_awid         <= x"0";

            
               axiStateDebug        <= x"01";   

               ch0Ready <= '0';

               ch2Ready <= '1';                     

               --check ch1 access
               if ch1DmaRequestLatched( 0 ) = '1' then
         
                  ch1DmaBufPointer     <= "000000000";                       
            
                  axiState    <= asCh1Read0;
                        
               elsif ch1DmaRequestLatched( 1 ) = '1' then
         
                  ch1DmaBufPointer    <= "100000000";                       
            
                  axiState    <= asCh1Read0;
            
               --check ch2 access
               elsif ch2DmaRequestLatched = '1' then


                  -- 00 - fill da with value in ch2Input0
                  -- 01 - read sa to buffer
                  -- 02 - write buffer to da
                  -- 03 - read sa to buffer with shift right
                  
                  case ch2Command is

                     when x"00" =>

                        ch2Ready <= '0';                     
                        axiState <= asCh2Fill0;

                     when x"01" =>

                        ch2Ready <= '0';                     
                        axiState <= asCh2Read0;

                     when x"02" =>

                        ch2Ready <= '0';                     
                        axiState <= asCh2Write0;

                     when x"03" =>
                     
                        ch2Ready <= '0';
                        axiState <= asCh2ReadShift0;
                  
                     when others =>
                     
                        ch2DmaRequestLatched <= '0';
                  
                  end case;
                              
          
            
               --check ch0 access
               elsif ch0CE = '1' then
          
                  --clear cache hits     
                  cacheHitWay0         <= '0';
                  cacheHitWay1         <= '0';
                  cacheHitWay2         <= '0';
                  cacheHitWay3         <= '0';


                  if cacheEnabled = '1' then
                  
                     --check cache
                     axiState <= asCh0Cache0;         

                  else
                  
                     --cache disabled
                     if ch0Wr = '1' then
                  
                        --write
                        axiState <= asCh0Write0;
                     
                     else
                                       
                        axiState <= asCh0Read0;
                     
                     end if;
               
                  end if;
                  
               end if;               
            
            when asCh0Cache0 =>

               axiStateDebug        <= x"01";   
            
               --check hits
               if cacheValidWay0( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) = '1' and  cacheTagWay0DOut( 13 downto 0 ) = ch0A( 27 downto 14 ) then
               
                   cacheHitWay0  <= '1';
               
                   ch0DOut       <= cacheWay0DOuta;    
               
                   if ch0Wr = '0' then
                   
                        ch0Ready <= '1';
                        
                        if ch0CE = '0' then
                        
                           ch0Ready <= '0';
                           axiState <= asIdle;
                        
                        end if;
        
                     
                   else
                   
                     --write to ram and cache

                     --write to cache
                     cacheWay0WEa      <= ch0DataMask;                     

                     --write to ddr
                     
                     m00_axi_awaddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
                     m00_axi_awvalid   <= '1';
                     m00_axi_awlen     <= x"00";
               
                     m00_axi_wvalid    <= '0';
                     m00_axi_bready    <= '0';
                     
                     if m00_axi_awready = '1' then
                        
                        axiState <= asCh0Write1;
                     
                     else
                     
                        axiState <= asCh0Write0;
                        
                     end if;
                     
                   
                   end if;
                   
               elsif cacheValidWay1( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) = '1' and  cacheTagWay1DOut( 13 downto 0 ) = ch0A( 27 downto 14 ) then
 
                   cacheHitWay1  <= '1';

                   ch0DOut       <= cacheWay1DOuta;    

                   if ch0Wr = '0' then
                   
--                     axiState    <= asCh0TransactionDone;
                        ch0Ready <= '1';
                        
                        if ch0CE = '0' then
                        
                           ch0Ready <= '0';
                           axiState <= asIdle;
                           
                        end if;
                        
                   else
                   
                     --write to ram and cache
                     
                     --write to cache
                     cacheWay1WEa      <= ch0DataMask;                     

                     --write to ddr

                     --write to ddr
                     
                     m00_axi_awaddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
                     m00_axi_awvalid   <= '1';
                     m00_axi_awlen     <= x"00";
               
                     m00_axi_wvalid    <= '0';
                     m00_axi_bready    <= '0';
                     
                     if m00_axi_awready = '1' then
                        
                        axiState <= asCh0Write1;
                     
                     else
                     
                        axiState <= asCh0Write0;
                        
                     end if;
                   
                   end if;
            
               elsif cacheValidWay2( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) = '1' and  cacheTagWay2DOut( 13 downto 0 ) = ch0A( 27 downto 14 ) then

                   cacheHitWay2  <= '1';
         
                   ch0DOut       <= cacheWay2DOuta;    

                   if ch0Wr = '0' then
                   
--                     axiState    <= asCh0TransactionDone;
                        ch0Ready <= '1';
                        
                        if ch0CE = '0' then
                        
                           ch0Ready <= '0';
                           axiState <= asIdle;
                           
                        end if;
                     
                   else
                   
                     --write to ram and cache
                     
                     --write to cache
                     cacheWay2WEa      <= ch0DataMask;                     

                     --write to ddr

                     --write to ddr
                     
                     m00_axi_awaddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
                     m00_axi_awvalid   <= '1';
                     m00_axi_awlen     <= x"00";
               
                     m00_axi_wvalid    <= '0';
                     m00_axi_bready    <= '0';
                     
                     if m00_axi_awready = '1' then
                        
                        axiState <= asCh0Write1;
                     
                     else
                     
                        axiState <= asCh0Write0;
                        
                     end if;
                   
                   end if;


               elsif cacheValidWay3( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) = '1' and  cacheTagWay3DOut( 13 downto 0 ) = ch0A( 27 downto 14 ) then
         
                   cacheHitWay3  <= '1';

                   ch0DOut       <= cacheWay3DOuta;    

                   if ch0Wr = '0' then
                   
--                     axiState    <= asCh0TransactionDone;
                        ch0Ready <= '1';
                        
                        if ch0CE = '0' then
                        
                           ch0Ready <= '0';
                           axiState <= asIdle;
                           
                        end if;
                     
                   else
                   
                     --write to ram and cache
                     --write to cache
                     cacheWay3WEa      <= ch0DataMask;                     

                     --write to ddr

                     --write to ddr
                     
                     m00_axi_awaddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
                     m00_axi_awvalid   <= '1';
                     m00_axi_awlen     <= x"00";
               
                     m00_axi_wvalid    <= '0';
                     m00_axi_bready    <= '0';
                     m00_axi_wlast     <= '1';
                     
                     if m00_axi_awready = '1' then
                        
                        axiState <= asCh0Write1;
                     
                     else
                     
                        axiState <= asCh0Write0;
                        
                     end if;
                     
                   
                   end if;

               else

                   --data in cache not found
                                  
                   if ch0Wr = '0' then

                     --read 64 bytes from ddr and store in next cache line
                   
                     axiState <= asCh0CacheFill0;
                     
                   else
                   
                     --write to ddr only

                     m00_axi_awaddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
                     m00_axi_awvalid   <= '1';
                     m00_axi_awlen     <= x"00";
               
                     m00_axi_wvalid    <= '0';
                     m00_axi_bready    <= '0';
                     m00_axi_wlast     <= '1';
                     
                     if m00_axi_awready = '1' then
                        
                        axiState <= asCh0Write1;
                     
                     else
                     
                        axiState <= asCh0Write0;
                        
                     end if;
                                              
                   end if;

               end if;
               
            
            when asCh0CacheFill0 =>
            
               axiStateDebug        <= x"02";   

               --save tag, set cache line valid
               --cacheTagWay1DOut( 13 downto 0 ) = ch0A( 27 downto 14 )
               
               --check way number for current page
               
               --                        page address
               case cachePageWayCounter( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) )  is
               
                  when "00" =>
                     
                     cacheTagWay0We                                                    <= '1';      
                     cacheValidWay0( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) )   <= '1';
                     
                  when "01" =>
                  
                     cacheTagWay1We                                                    <= '1';      
                     cacheValidWay1( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) )   <= '1';
                  
                  when "10" =>

                     cacheTagWay2We                                                    <= '1';      
                     cacheValidWay2( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) )   <= '1';
                  
                  
                  when "11" =>
                  
                     cacheTagWay3We                                                    <= '1';      
                     cacheValidWay3( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) )   <= '1';
               
               end case;

               --read
               m00_axi_araddr    <= x"0" & ch0A( 27 downto 6 ) & "000000";    --128 bit adr
               m00_axi_arvalid   <= '1';
               m00_axi_arlen     <= x"03";                                    --4 128-bit words 
               m00_axi_rready    <= '0';

               if m00_axi_arready = '1' then
                  
                  axiState <= asCh0CacheFill1;
                  
               end if;

            when asCh0CacheFill1 =>
            
               axiStateDebug        <= x"03";   

               cacheTagWay0We <= '0';      
               cacheTagWay1We <= '0';      
               cacheTagWay2We <= '0';                  
               cacheTagWay3We <= '0';      

               --clear arvalid, set readiness to receive data
               m00_axi_arvalid   <= '0';
               m00_axi_rready    <= '1';

               if m00_axi_rvalid = '1' then
                  
                  --we've got data

                  --check if data requested by cpu are within this 128-bit word                                    
                  if ch0A( 5 downto 4 ) = "00" then
                  
                     case ch0A( 3 downto 2 ) is
                     
                        when "00" =>
                           
                           ch0DOut  <= m00_axi_rdata( 31 downto 0 );
                           
                        when "01" =>

                           ch0DOut  <= m00_axi_rdata( 63 downto 32 );
                        
                        when "10" =>

                           ch0DOut  <= m00_axi_rdata( 95 downto 64 );
                        
                           
                        when "11" => 
                       
                           ch0DOut  <= m00_axi_rdata( 127 downto 96 );
                     
                     end case;
                        
                     
                  end if;
                  
                  --check way number for current page
                  
                  --                        page address
                  case cachePageWayCounter( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) )  is
                  
                     when "00" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay0Ab    <= ch0A( 13 downto 6 ) & "00";
                        cacheWay0Dinb  <= m00_axi_rdata;
                        cacheWay0Web   <= ( others => '1' );                                 

                     when "01" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay1Ab    <= ch0A( 13 downto 6 ) & "00";
                        cacheWay1Dinb  <= m00_axi_rdata;
                        cacheWay1Web   <= ( others => '1' );

                     when "10" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay2Ab    <= ch0A( 13 downto 6 ) & "00";
                        cacheWay2Dinb  <= m00_axi_rdata;
                        cacheWay2Web   <= ( others => '1' );

                     when "11" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay3Ab    <= ch0A( 13 downto 6 ) & "00";
                        cacheWay3Dinb  <= m00_axi_rdata;
                        cacheWay3Web   <= ( others => '1' );
                              
                  end case;
                  
                  axiState       <= asCh0CacheFill2;
                                  
               end if;
            
            when asCh0CacheFill2 =>

               axiStateDebug        <= x"04";   

               if m00_axi_rvalid = '1' then
                  
                  --we've got data

                  --check if data requested by cpu are within this 128-bit word                                    
                  if ch0A( 5 downto 4 ) = "01" then
                  
                     case ch0A( 3 downto 2 ) is
                     
                        when "00" =>
                           
                           ch0DOut  <= m00_axi_rdata( 31 downto 0 );
                           
                        when "01" =>

                           ch0DOut  <= m00_axi_rdata( 63 downto 32 );
                        
                        when "10" =>

                           ch0DOut  <= m00_axi_rdata( 95 downto 64 );
                        
                           
                        when "11" => 
                       
                           ch0DOut  <= m00_axi_rdata( 127 downto 96 );
                     
                     end case;
                        
                     
                  end if;
                  
                  --check way number for current page
                  
                  --                        page address
                  case cachePageWayCounter( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) )  is
                  
                     when "00" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay0Ab    <= ch0A( 13 downto 6 ) & "01";
                        cacheWay0Dinb  <= m00_axi_rdata;
                        cacheWay0Web   <= ( others => '1' );                                 

                     when "01" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay1Ab    <= ch0A( 13 downto 6 ) & "01";
                        cacheWay1Dinb  <= m00_axi_rdata;
                        cacheWay1Web   <= ( others => '1' );

                     when "10" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay2Ab    <= ch0A( 13 downto 6 ) & "01";
                        cacheWay2Dinb  <= m00_axi_rdata;
                        cacheWay2Web   <= ( others => '1' );

                     when "11" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay3Ab    <= ch0A( 13 downto 6 ) & "01";
                        cacheWay3Dinb  <= m00_axi_rdata;
                        cacheWay3Web   <= ( others => '1' );
                              
                  end case;

                  axiState       <= asCh0CacheFill3;
                                  
               end if;

            when asCh0CacheFill3 =>

               axiStateDebug        <= x"05";   

               if m00_axi_rvalid = '1' then
                  
                  --we've got data

                  --check if data requested by cpu are within this 128-bit word                                    
                  if ch0A( 5 downto 4 ) = "10" then
                  
                     case ch0A( 3 downto 2 ) is
                     
                        when "00" =>
                           
                           ch0DOut  <= m00_axi_rdata( 31 downto 0 );
                           
                        when "01" =>

                           ch0DOut  <= m00_axi_rdata( 63 downto 32 );
                        
                        when "10" =>

                           ch0DOut  <= m00_axi_rdata( 95 downto 64 );
                        
                           
                        when "11" => 
                       
                           ch0DOut  <= m00_axi_rdata( 127 downto 96 );
                     
                     end case;
                        
                     
                  end if;
                  
                  --check way number for current page
                  
                  --                        page address
                  case cachePageWayCounter( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) )  is
                  
                     when "00" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay0Ab    <= ch0A( 13 downto 6 ) & "10";
                        cacheWay0Dinb  <= m00_axi_rdata;
                        cacheWay0Web   <= ( others => '1' );                                 

                     when "01" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay1Ab    <= ch0A( 13 downto 6 ) & "10";
                        cacheWay1Dinb  <= m00_axi_rdata;
                        cacheWay1Web   <= ( others => '1' );

                     when "10" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay2Ab    <= ch0A( 13 downto 6 ) & "10";
                        cacheWay2Dinb  <= m00_axi_rdata;
                        cacheWay2Web   <= ( others => '1' );

                     when "11" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay3Ab    <= ch0A( 13 downto 6 ) & "10";
                        cacheWay3Dinb  <= m00_axi_rdata;
                        cacheWay3Web   <= ( others => '1' );
                              
                  end case;

                  axiState       <= asCh0CacheFill4;
                                  
               end if;

            when asCh0CacheFill4 =>

               axiStateDebug        <= x"06";   

               if m00_axi_rvalid = '1' then
                  
                  --we've got data

                  --check if data requested by cpu are within this 128-bit word                                    
                  if ch0A( 5 downto 4 ) = "11" then
                  
                     case ch0A( 3 downto 2 ) is
                     
                        when "00" =>
                           
                           ch0DOut  <= m00_axi_rdata( 31 downto 0 );
                           
                        when "01" =>

                           ch0DOut  <= m00_axi_rdata( 63 downto 32 );
                        
                        when "10" =>

                           ch0DOut  <= m00_axi_rdata( 95 downto 64 );
                        
                           
                        when "11" => 
                       
                           ch0DOut  <= m00_axi_rdata( 127 downto 96 );
                     
                     end case;
                        
                     
                  end if;
                  
                  --check way number for current page
                  
                  --                        page address
                  case cachePageWayCounter( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) )  is
                  
                     when "00" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay0Ab    <= ch0A( 13 downto 6 ) & "11";
                        cacheWay0Dinb  <= m00_axi_rdata;
                        cacheWay0Web   <= ( others => '1' );                                 
               
                     when "01" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay1Ab    <= ch0A( 13 downto 6 ) & "11";
                        cacheWay1Dinb  <= m00_axi_rdata;
                        cacheWay1Web   <= ( others => '1' );

                     when "10" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay2Ab    <= ch0A( 13 downto 6 ) & "11";
                        cacheWay2Dinb  <= m00_axi_rdata;
                        cacheWay2Web   <= ( others => '1' );

                     when "11" =>
                     
                        --             page address          --entry address in cache line
                        cacheWay3Ab    <= ch0A( 13 downto 6 ) & "11";
                        cacheWay3Dinb  <= m00_axi_rdata;
                        cacheWay3Web   <= ( others => '1' );
                              
                  end case;

                  --increase way counter for current page
                  cachePageWayCounter( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) <= std_logic_vector( unsigned( cachePageWayCounter( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) ) + 1 );

                  --finish axi read
                  m00_axi_rready    <= '0';                   
                  m00_axi_arvalid   <= '0';
   

                  axiState       <= asCh0CacheFill5;
                                  
               end if;

            when asCh0CacheFill5 =>

               axiStateDebug        <= x"07";   

               cacheWay0Web   <= ( others => '0' );                                 
               cacheWay1Web   <= ( others => '0' );                                 
               cacheWay2Web   <= ( others => '0' );                                 
               cacheWay3Web   <= ( others => '0' );                                 
            
               --data in ch0dout, finish bus cycle

               ch0Ready <= '1';
               
               if ch0CE = '0' then
               
                  ch0Ready <= '0';
                  axiState <= asIdle;
               
               end if;
                           
            when asCh0Read0 =>
            
               axiStateDebug        <= x"08";   
                                                      
               --read
               m00_axi_araddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
               m00_axi_arvalid   <= '1';
               m00_axi_arlen     <= x"00";
               m00_axi_rready    <= '0';

               if m00_axi_arready = '1' then
                  
                  axiState <= asCh0Read1;
                  
               end if;

            when asCh0Read1 =>

               axiStateDebug        <= x"09";   

               m00_axi_arvalid   <= '0';
               m00_axi_rready    <= '1';
               
               if m00_axi_rvalid = '1' then

                  case ch0A( 3 downto 2 ) is 
                  
                     when "00" =>               
                        
                        ch0DOut  <= m00_axi_rdata( 31 downto 0 );

                     when "01" =>               
                        
                        ch0DOut  <= m00_axi_rdata( 63 downto 32 );

                     when "10" =>               
                        
                        ch0DOut  <= m00_axi_rdata( 95 downto 64 );

                     when "11" =>               
                        
                        ch0DOut  <= m00_axi_rdata( 127 downto 96 );
                  
                  end case;
                  
                  --if m00_axi_rlast = '1' then
                                       
                     m00_axi_rready    <= '0';                   
                     m00_axi_arvalid   <= '0';
                  
                     axiState <= asCh0TransactionDone;
                     
                  --end if;
               end if;
               
            
            when asCh0Write0 =>

               axiStateDebug        <= x"0a";   

               --deassert cache write
               cacheWay0WEa      <= ( others => '0' );                     
               cacheWay1WEa      <= ( others => '0' );                     
               cacheWay2WEa      <= ( others => '0' );                     
               cacheWay3WEa      <= ( others => '0' );                     
            
               m00_axi_awaddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
               m00_axi_awvalid   <= '1';
               m00_axi_awlen     <= x"00";
         
               m00_axi_wvalid    <= '0';
               m00_axi_bready    <= '0';
               
               if m00_axi_awready = '1' then
                  
                  axiState <= asCh0Write1;
                  
               end if;

            when asCh0Write1 =>

               axiStateDebug        <= x"0b";   

               --deassert cache write
               cacheWay0WEa      <= ( others => '0' );                     
               cacheWay1WEa      <= ( others => '0' );                     
               cacheWay2WEa      <= ( others => '0' );                     
               cacheWay3WEa      <= ( others => '0' );                     

               m00_axi_awvalid   <= '0';
               
               case ch0A( 3 downto 2 ) is 
               
                  when "00" =>               
               
                     m00_axi_wstrb  <= x"000" & ch0DataMask;
                     
                     m00_axi_wdata( 31 downto 0 ) <= ch0DIn;
                                          
                  when "01" =>               
                     
                     m00_axi_wstrb  <= x"00" & ch0DataMask & x"0";

                     m00_axi_wdata( 63 downto 32 ) <= ch0DIn;

                  when "10" =>               
                     
                     m00_axi_wstrb  <= x"0" & ch0DataMask & x"00";

                     m00_axi_wdata( 95 downto 64 ) <= ch0DIn;

                  when "11" =>               
                     
                     m00_axi_wstrb  <= ch0DataMask & x"000";

                     m00_axi_wdata( 127 downto 96 ) <= ch0DIn;
               
               end case;

               m00_axi_wvalid <= '1';
               m00_axi_bready <= '0';
               m00_axi_wlast  <= '1';
               
               if m00_axi_wready = '1' then
               
                  axiState <= asCh0Write2;
                  
               end if;                          
            
            when asCh0Write2 =>
            
               axiStateDebug        <= x"0c";   

               m00_axi_wvalid <= '0';
               m00_axi_bready <= '1';
                      
               if m00_axi_bvalid = '1' then
               
                  m00_axi_bready <= '0';
                  
                  axiState <= asCh0TransactionDone;
              
              end if;
               
            when asCh0TransactionDone =>
            
               axiStateDebug        <= x"0d";   

               ch0Ready <= '1';
               
               if ch0CE = '0' then
               
                  ch0Ready <= '0';
                  axiState <= asIdle;
               
               end if;

            when asCh1Read0 =>
            
               axiStateDebug        <= x"0e";   

               m00_axi_araddr <= ch1DmaPointer;
               
               m00_axi_arlen  <= ch1DmaRequestLength;
               
               m00_axi_rready    <= '0';
               
               m00_axi_arvalid   <= '1';
               
               if m00_axi_arready = '1' then
               
                  axiState <= asCh1Read1;
               
               end if;
            
            when asCh1Read1 =>
            
               axiStateDebug        <= x"0f";   

               m00_axi_arvalid   <= '0';
               m00_axi_rready    <= '1';
               
               if m00_axi_rvalid = '1' then
               
                  ch1BufAA    <= ch1DmaBufPointer;
                  ch1BufADIn  <= m00_axi_rdata;
                  ch1BufAWr   <= "1";
                  
                  ch1DmaBufPointer  <= std_logic_vector( unsigned( ch1DmaBufPointer ) + 1 );
                  
                  if m00_axi_rlast = '1' then
                  
                     axiState <= asCh1Read2;
                  
                  end if;
                  
               end if; 
               
            when asCh1Read2 =>
            
               axiStateDebug        <= x"10";   

               ch1BufAWr         <= "0";
               m00_axi_rready    <= '0';
               m00_axi_arvalid   <= '0';
               
               ch1DmaRequestLatched <= "00";
               
               ch1DmaPointer  <= std_logic_vector( unsigned( ch1DmaPointer ) + unsigned( ch1DmaRequestPtrAdd ) );

               axiState <= asIdle;
            
            when asCh2Fill0 =>

               axiStateDebug        <= x"11";   
               
               m00_axi_awaddr    <= ch2DaPointer;
               m00_axi_awvalid   <= '1';
               m00_axi_awlen     <= ch2TransferLength;
               ch2TransferCounter   <= ch2TransferLength;
               
               m00_axi_wvalid    <= '0';
               m00_axi_bready    <= '0';
               m00_axi_wlast     <= '0';
               
               ch2FirstDataBeat  <= '1';
               
               if m00_axi_awready = '1' then
                 

                  axiState <= asCh2Fill1;
                  
               end if;

            when asCh2Fill1 =>
            
               axiStateDebug        <= x"12";   

               m00_axi_awvalid   <= '0';               
               m00_axi_bready    <= '0';
               
               if m00_axi_wready = '1' then
               
                  if ch2FirstDataBeat = '1' then
                 
                     m00_axi_wstrb     <= ch2DaFirstWriteMask;                     
                     ch2FirstDataBeat  <= '0';
                     
                  elsif ch2TransferCounter = x"00" then

                     m00_axi_wstrb     <= ch2DaLastWriteMask;                     
                  
                  else

                     m00_axi_wstrb     <= ( others => '1' );                     
                  
                  end if;
                 
                  m00_axi_wdata     <= ch2Input0;
                                          
                  m00_axi_wvalid    <= '1';

                  ch2TransferCounter <= std_logic_vector( unsigned( ch2TransferCounter ) - 1 );

                  if ch2TransferCounter = x"00" then
                  
                     m00_axi_wlast  <= '1';
                     
                     
                     axiState <= asCh2Fill2;
                  
                  else

                     m00_axi_wlast  <= '0';
                  
                  
                  end if;
                  
               end if;                          

            when asCh2Fill2 =>
            
               axiStateDebug        <= x"13";   

               if m00_axi_wready = '1' then --last beat accepted
               
                  m00_axi_wlast  <= '0';
                  m00_axi_wvalid <= '0';
                  m00_axi_bready <= '1';
                                    
               end if;
                              

               if m00_axi_bvalid = '1' then
               
                  m00_axi_bready <= '0';

                  ch2DmaRequestLatched <= '0';                  
                  axiState <= asIdle;
              
              end if;

            when asCh2Read0 =>
            
               axiStateDebug        <= x"14";   


               ch2BufPointer        <= ( others => '0' );

               m00_axi_araddr       <= ch2SaPointer;               
               m00_axi_arlen        <= ch2TransferLength;              
               m00_axi_rready       <= '0';               
               m00_axi_arvalid      <= '1';
               
               if m00_axi_arready = '1' then
               
                  axiState <= asCh2Read1;
               
               end if;
            
            when asCh2Read1 =>
            
               axiStateDebug     <= x"15";   

               m00_axi_arvalid   <= '0';
               m00_axi_rready    <= '1';
               
               if m00_axi_rvalid = '1' then
               
                  ch2BufA     <= ch2BufPointer;
                  ch2BufDOut  <= m00_axi_rdata;
                  ch2BufWE    <= ( others => '1' );
                  
                  ch2BufPointer  <= std_logic_vector( unsigned( ch2BufPointer ) + 1 );
                  
                  if m00_axi_rlast = '1' then
                  
                     axiState <= asCh2Read2;
                  
                  end if;
                  
               end if; 
               
            when asCh2Read2 =>
            
               axiStateDebug        <= x"16";   

               ch2BufWE             <= ( others => '0' );
               m00_axi_rready       <= '0';
               m00_axi_arvalid      <= '0';
               
               ch2DmaRequestLatched <= '0';               
               axiState <= asIdle;

            when asCh2Write0 =>

               axiStateDebug        <= x"17";   
               
               m00_axi_awaddr    <= ch2DaPointer;
               m00_axi_awvalid   <= '1';
               m00_axi_awlen     <= ch2TransferLength;
               m00_axi_wvalid    <= '0';
               m00_axi_bready    <= '0';
               m00_axi_wlast     <= '0';

               ch2TransferCounter   <= ch2TransferLength;
               ch2FirstDataBeat     <= '1';
               
               ch2BufPointer        <= x"01";  
               ch2BufA              <= x"00";
               
               ch2BufWE             <= ( others => '0' );
               
               if m00_axi_awready = '1' then
                  
                  axiState <= asCh2Write1;
                  
               end if;

            when asCh2Write1 =>
            
               axiStateDebug        <= x"18";   

               m00_axi_awvalid   <= '0';               
               m00_axi_bready    <= '0';
               
               if m00_axi_wready = '1' then
               
                  ch2BufA           <= ch2BufPointer;
                  ch2BufPointer     <= std_logic_vector( unsigned( ch2BufPointer ) + 1 );

                  if ch2FirstDataBeat = '1' then
                 
                     m00_axi_wstrb     <= ch2DaFirstWriteMask;                     
                     ch2FirstDataBeat  <= '0';
                     
                  elsif ch2TransferCounter = x"00" then

                     m00_axi_wstrb     <= ch2DaLastWriteMask;                     
                  
                  else

                     m00_axi_wstrb     <= ( others => '1' );                     
                  
                  end if;

                  m00_axi_wdata     <= ch2BufDin;
                                          
                  m00_axi_wvalid    <= '1';

                  ch2TransferCounter <= std_logic_vector( unsigned( ch2TransferCounter ) - 1 );

                  if ch2TransferCounter = x"00" then
                  
                     m00_axi_wlast  <= '1';
                     
                     axiState <= asCh2Write2;
                  
                  else

                     m00_axi_wlast  <= '0';
                                    
                  end if;
                  
               end if;                          

            when asCh2Write2 =>
            
               axiStateDebug        <= x"19";   

               if m00_axi_wready = '1' then --last beat accepted
               
                  m00_axi_wlast  <= '0';
                  m00_axi_wvalid <= '0';
                  m00_axi_bready <= '1';
                                    
               end if;
                              

               if m00_axi_bvalid = '1' then
               
                  m00_axi_bready <= '0';

                  ch2DmaRequestLatched <= '0';                  
                  axiState <= asIdle;
              
              end if;


            when asCh2ReadShift0 =>
            
               axiStateDebug        <= x"1a";   

               ch2BufPointer        <= ( others => '0' );
               ch2PreviousData      <= ( others => '0' );
               
               m00_axi_araddr       <= ch2SaPointer;               
               m00_axi_arlen        <= ch2TransferLength;              
               m00_axi_rready       <= '0';               
               m00_axi_arvalid      <= '1';
               
               if m00_axi_arready = '1' then
               
                  axiState <= asCh2ReadShift1;
               
               end if;
            
            when asCh2ReadShift1 =>
            
               axiStateDebug     <= x"1b";   

               m00_axi_arvalid   <= '0';
               m00_axi_rready    <= '1';
               
               if m00_axi_rvalid = '1' then
               
                  ch2BufA     <= ch2BufPointer;
                  ch2BufWE    <= ( others => '1' );

                  case ch2Input0( 2 downto 0 ) is
                  
                     when "000"  =>
                     --0 
                        ch2BufDOut  <= m00_axi_rdata;
                  
                     when "001" =>
                     --1

                        ch2BufDOut                       <= m00_axi_rdata( 111 downto 0 ) & ch2PreviousData( 15 downto 0 );
                        ch2PreviousData( 15 downto 0 )   <= m00_axi_rdata( 127 downto 112 );
                     
                     when "010" =>
                     --2
                        ch2BufDOut                       <= m00_axi_rdata( 95 downto 0 ) & ch2PreviousData( 31 downto 0 );
                        ch2PreviousData( 31 downto 0 )   <= m00_axi_rdata( 127 downto 96 );
                     
                     when "011" =>
                     --3
                        ch2BufDOut                       <= m00_axi_rdata( 79 downto 0 ) & ch2PreviousData( 47 downto 0 ); 
                        ch2PreviousData( 47 downto 0 )   <= m00_axi_rdata( 127 downto 80 );
 
                     when "100" =>
                     --4
                        ch2BufDOut                       <= m00_axi_rdata( 63 downto 0 ) & ch2PreviousData( 63 downto 0 );
                        ch2PreviousData( 63 downto 0 )   <= m00_axi_rdata( 127 downto 64 );

                     when "101" =>
                     --5
                        ch2BufDOut                       <= m00_axi_rdata( 47 downto 0 ) & ch2PreviousData( 79 downto 0 );
                        ch2PreviousData( 79 downto 0 )   <= m00_axi_rdata( 127 downto 48 );

                     when "110" =>
                     --6
                        ch2BufDOut                       <= m00_axi_rdata( 31 downto 0 ) & ch2PreviousData( 95 downto 0 );
                        ch2PreviousData( 95 downto 0 )   <= m00_axi_rdata( 127 downto 32 );

                     when "111" =>
                     --7
                        ch2BufDOut                        <= m00_axi_rdata( 15 downto 0 ) & ch2PreviousData( 111 downto 0 );
                        ch2PreviousData( 111 downto 0 )   <= m00_axi_rdata( 127 downto 16 );
                     
                  end case;
                  
                  ch2BufPointer  <= std_logic_vector( unsigned( ch2BufPointer ) + 1 );
                  
                  if m00_axi_rlast = '1' then
                  
                     axiState <= asCh2ReadShift2;
                  
                  end if;
                  
               end if; 
               
            when asCh2ReadShift2 =>
            
               axiStateDebug        <= x"1c";   

               m00_axi_rready       <= '0';
               m00_axi_arvalid      <= '0';


               ch2BufA     <= ch2BufPointer;
               ch2BufWE    <= ( others => '1' );

               case ch2Input0( 2 downto 0 ) is
               
                  when "000"  =>
                  --0 
                     ch2BufDOut  <= ( others => '0' );
               
                  when "001" =>
                  --1
                     ch2BufDOut( 15 downto 0 )  <= ch2PreviousData( 15 downto 0 );
                  
                  when "010" =>
                  --2
                     ch2BufDOut( 31 downto 0 )   <= ch2PreviousData( 31 downto 0 );
                  
                  when "011" =>
                  --3
                     ch2BufDOut( 47 downto 0 )   <= ch2PreviousData( 47 downto 0 );
                     
                  when "100" =>
                  --4
                     ch2BufDOut( 63 downto 0 )   <= ch2PreviousData( 63 downto 0 );

                  when "101" =>
                  --5
                     ch2BufDOut( 79 downto 0 )   <= ch2PreviousData( 79 downto 0 );

                  when "110" =>
                  --6
                     ch2BufDOut( 95 downto 0 )   <= ch2PreviousData( 95 downto 0 );

                  when "111" =>
                  --7
                     ch2BufDOut( 111 downto 0 )   <= ch2PreviousData( 111 downto 0 );
                  
               end case;

               
               axiState             <= asCh2ReadShift3;
               

            when asCh2ReadShift3 =>
            
               ch2BufWE             <= ( others => '0' );
               ch2DmaRequestLatched <= '0';               
               axiState <= asIdle;

                                    
                
            when others =>

               axiStateDebug        <= x"ff";   
            
               axiState <= asIdle;
               
         end case;
         
      
      end if;
   
   end if;

end process;



-- axi dma registers

registers: process( all )
begin

   if rising_edge( clock ) then
   
      if reset = '1' then
               
         registerState     <= rsWaitForRegAccess;
         ready             <= '0';
      
         ch1DmaRequestLength <= x"36";   --54 128-bit words,  864 bytes, 432 pixels
         ch1DmaRequestPtrAdd <= x"0400"; --row width 1024 bytes, 512 pixels
                  
         ch1DmaPointerStart   <= ( others => '0' );
         
         ch2SaAddress         <= ( others => '0' );
         ch2SaPointer         <= ( others => '0' );
         ch2SaRowWidth        <= ( others => '0' );
         ch2DaAddress         <= ( others => '0' );
         ch2DaPointer         <= ( others => '0' );
         ch2DaRowWidth        <= ( others => '0' );
         ch2DaFirstWriteMask  <= ( others => '1' );
         ch2DaLastWriteMask   <= ( others => '1' );
         
         --cpu cache enabled by default
         
         cacheEnabled      <= '1';

         --clear triggers
         
         triggerCacheFlush <= '0';
         ch2DmaRequest     <= '0';     
         
      else
            
         --clear triggers
         
         if ch2DmaRequestLatched = '1' then
         
            ch2DmaRequest     <= '0';     
      
         end if;
                  
         case registerState is
         
            when rsWaitForRegAccess =>
               
               --clear triggers
      
               triggerCacheFlush <= '0';            
           
               ready <= '0';
               
               if ce = '1' then
               
                  
                  case a( 7 downto 0 ) is 
               
                     --0x00 r- id                      
                     when x"00" =>
                     
                        dout  <= x"8000000c";   -- axi dma id
                                                
                     --0x04 r- component version                       
                     when x"01" =>
                     
                        dout  <= x"20250221";

                     --0x08 rw ch1DmaPointerStart                       
                     when x"02" =>
                     
                        dout  <= ch1DmaPointerStart;
                        
                        if wr = '1' then
                        
                           ch1DmaPointerStart   <= din;
                        
                        end if;
                        
                     --0x0c rw ch1DmaRequestLength                       
                     when x"03" =>
                     
                        dout  <= x"000000" & ch1DmaRequestLength;
                        
                        if wr = '1' then
                        
                           ch1DmaRequestLength   <= din( 7 downto 0 );
                        
                        end if;

                     --0x10 rw ch1DmaRequestPtrAdd                       
                     when x"04" =>
                     
                        dout  <= x"0000" & ch1DmaRequestPtrAdd;
                        
                        if wr = '1' then
                        
                           ch1DmaRequestPtrAdd   <= din( 15 downto 0 );
                        
                        end if;

                    --0x14 rw cacheControl                       
                     when x"05" =>
                     
                        dout  <= x"0000000" & "000" & cacheEnabled;
                        
                        if wr = '1' then
                        
                           cacheEnabled   <= din( 0 );
                           
                           if din( 1 ) = '1' then
                           
                              triggerCacheFlush <= '1';
                              
                           end if;
                           
                        end if;

                    --0x18 rw ch2TransferLength                       
                     when x"06" =>
                     
                        dout  <= x"000000" & ch2TransferLength;
                        
                        if wr = '1' then

                           ch2TransferLength <= din( 7 downto 0 );                        
                           
                        end if;

                    --0x1c rw ch2DaWriteMask
                    when x"07" =>
                    
                        dout <= ch2DaFirstWriteMask & ch2DaLastWriteMask;
                        
                        if wr = '1' then
         
                           ch2DaFirstWriteMask  <= din( 31 downto 16 );
                           ch2DaLastWriteMask   <= din( 15 downto 0 );

                        end if;
                    
                    --0x20 rw ch2Input0_0                       
                     when x"08" =>
                     
                        dout  <= ch2Input0( 31 downto 0 );
                        
                        if wr = '1' then

                           ch2Input0( 31 downto 0 ) <= din;                        
                           
                        end if;

                    --0x24 rw ch2Input0_1                       
                     when x"09" =>
                     
                        dout  <= ch2Input0( 63 downto 32 );
                        
                        if wr = '1' then

                           ch2Input0( 63 downto 32 ) <= din;                        
                           
                        end if;

                    --0x28 rw ch2Input0_2                       
                     when x"0a" =>
                     
                        dout  <= ch2Input0( 95 downto 64 );
                        
                        if wr = '1' then

                           ch2Input0( 95 downto 64 ) <= din;                        
                           
                        end if;

                    --0x2c rw ch2Input0_3                       
                     when x"0b" =>
                     
                        dout  <= ch2Input0( 127 downto 96 );
                        
                        if wr = '1' then

                           ch2Input0( 127 downto 96 ) <= din;                        
                           
                        end if;

                    --0x30 rw ch2SaAddress                       
                     when x"0c" =>
                     
                        dout  <= ch2SaAddress;
                        
                        if wr = '1' then

                           ch2SaAddress <= din;                        
                           
                        end if;

                    --0x34 rw ch2SaRowWidth                       
                     when x"0d" =>
                     
                        dout  <= x"0000" & ch2SaRowWidth;
                        
                        if wr = '1' then

                           ch2SaRowWidth <= din( 15 downto 0 );                        
                           
                        end if;

                    --0x38 rw ch2DaAddress                       
                     when x"0e" =>
                     
                        dout  <= ch2DaAddress;
                        
                        if wr = '1' then

                           ch2DaAddress <= din;                        
                           
                        end if;

                    --0x3c rw ch2DaRowWidth                       
                     when x"0f" =>
                     
                        dout  <= x"0000" & ch2DaRowWidth;
                        
                        if wr = '1' then

                           ch2DaRowWidth <= din( 15 downto 0 );                        
                           
                        end if;

                     --0x40 rw ch2Command / status                       
                     
                     --commands ( write )
                     ---- 00 - fill da with value in ch2Input0
                     ---- 01 - read sa to buffer
                     ---- 02 - write buffer to da
                     
                     --status ( read )
                     --b0 - ch2Ready
                     
                     when x"10" =>
                     
                        dout  <= x"0000000" & "000" & not ch2DmaRequestLatched;
                        
                        if wr = '1' then

                           --advance address regs according to command
                           
                           case din( 7 downto 0 ) is 
                           
                              when x"00" =>

                                 --fill
                                 ch2DaPointer   <= ch2DaAddress;
                                 ch2DaAddress   <= std_logic_vector( unsigned( ch2DaAddress ) + unsigned( ch2DaRowWidth ) );

                              when x"01" =>

                                 --read
                                 ch2SaPointer   <= ch2SaAddress;
                                 ch2SaAddress   <= std_logic_vector( unsigned( ch2SaAddress ) + unsigned( ch2SaRowWidth ) );

                              when x"02" =>

                                 --write
                                 ch2DaPointer   <= ch2DaAddress;
                                 ch2DaAddress   <= std_logic_vector( unsigned( ch2DaAddress ) + unsigned( ch2DaRowWidth ) );

                              when x"03" =>
                              
                                 --read with shift right
                                 ch2SaPointer   <= ch2SaAddress;
                                 ch2SaAddress   <= std_logic_vector( unsigned( ch2SaAddress ) + unsigned( ch2SaRowWidth ) );
                                 
                                                                  
                              when others =>
                              
                                 ch2SaPointer   <= ch2SaAddress;
                                 ch2DaPointer   <= ch2DaAddress;
                              
                           end case;

                           ch2Command     <= din( 7 downto 0 );                        
                           ch2DmaRequest  <= '1';     

                        end if;

                     when x"11" =>
                     
                        dout <= x"000000" & axiStateDebug;

                     when others =>
                     
                        dout  <= ( others => '0' );
                  
                  end case;
               
                  registerState  <= rsWaitForBusCycleEnd;
                  
               end if;
               
            when rsWaitForBusCycleEnd =>
            
               --wait for the bus cycle to end
               ready <= '1';
               
               if ce = '0' then
               
                  ready          <= '0';
                  registerState  <= rsWaitForRegAccess;
               
               end if;
               
            when others =>
            
               registerState  <= rsWaitForRegAccess;
         
         end case;
      
      end if;
   
   end if;

end process;


end Behavioral;
