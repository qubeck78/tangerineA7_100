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
end axiDMA;

architecture Behavioral of axiDMA is

--components

component dmaCh1BufRam is
port(
    clka:   in    std_logic;
    wea:    IN    std_logic_vector( 0 downto 0 );
    addra:  IN    std_logic_vector( 8 downto 0 );
    dina:   IN    std_logic_vector( 127 downto 0 );
    douta:  OUT   std_logic_vector( 127 downto 0 );

    clkb:   IN    std_logic;
    web:    IN    std_logic_vector( 0 downto 0 );
    addrb:  IN    std_logic_vector( 10 downto 0 );
    dinb:   IN    std_logic_vector( 31 downto 0 );
    doutb:  OUT   std_logic_vector( 31 downto 0 )
);
end component;

--cache data ram
component cacheDataRam is
port(

   --cpu side
   clka : IN STD_LOGIC;
   wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
   addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
   dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
   douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   
   --ddr side
   clkb : IN STD_LOGIC;
   web : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
   addrb : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
   dinb : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
   doutb : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
);
end component;

component cacheTagRam is
port(
   clka : IN STD_LOGIC;
   wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
   addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
   dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
   douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
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
                               asCh0Cache0, asCh0Cache1, asCh0Cache2, asCh0Cache3,
                               asCh0TransactionDone,
                               asCh1Read0, asCh1Read1, asCh1Read2, asCh1Read3 );

signal axiState:       axiState_T;

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

begin

-- negative reset
resetn   <= not reset;

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
      
         case axiState is
         
            when asIdle =>
            
               ch0Ready <= '0';

               --check ch1 access
               if ch1DmaRequestLatched( 0 ) = '1' then
         
                  ch1DmaBufPointer     <= "000000000";                       
            
                  axiState    <= asCh1Read0;
                        
               elsif ch1DmaRequestLatched( 1 ) = '1' then
         
                  ch1DmaBufPointer    <= "100000000";                       
            
                  axiState    <= asCh1Read0;
            
               elsif ch0CE = '1' then
          
                  --clear cache hits     
                  cacheHitWay0         <= '0';
                  cacheHitWay1         <= '0';
                  cacheHitWay2         <= '0';
                  cacheHitWay3         <= '0';
         

                  if ch0Wr = '1' then
                  
                     --write
                     axiState <= asCh0Write0;
                     
                  else
                                       
                     axiState <= asCh0Read0;
                     
                  end if;
               
               end if;               
            
            when asCh0Cache0 =>
            
               --check hits
               if cacheValidWay0( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) = '1' and  cacheTagWay0DOut( 13 downto 0 ) = ch0A( 27 downto 14 ) then
               
                   cacheHitWay0  <= '1';
               
                   ch0DOut       <= cacheWay0DOuta;    
               
                   if ch0Wr = '0' then
                   
                     axiState    <= asCh0TransactionDone;
                     
                   else
                   
                     --write to ram and cache
                     
                   
                   end if;
                   
               elsif cacheValidWay1( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) = '1' and  cacheTagWay1DOut( 13 downto 0 ) = ch0A( 27 downto 14 ) then
 
                   cacheHitWay1  <= '1';

                   ch0DOut       <= cacheWay1DOuta;    

                   if ch0Wr = '0' then
                   
                     axiState    <= asCh0TransactionDone;
                     
                   else
                   
                     --write to ram and cache
                     
                   
                   end if;
            
               elsif cacheValidWay2( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) = '1' and  cacheTagWay2DOut( 13 downto 0 ) = ch0A( 27 downto 14 ) then

                   cacheHitWay2  <= '1';
         
                   ch0DOut       <= cacheWay2DOuta;    

                   if ch0Wr = '0' then
                   
                     axiState    <= asCh0TransactionDone;
                     
                   else
                   
                     --write to ram and cache
                     
                   
                   end if;


               elsif cacheValidWay3( to_integer( unsigned( ch0A( 13 downto 6 ) ) ) ) = '1' and  cacheTagWay3DOut( 13 downto 0 ) = ch0A( 27 downto 14 ) then
         
                   cacheHitWay3  <= '1';

                   ch0DOut       <= cacheWay3DOuta;    

                   if ch0Wr = '0' then
                   
                     axiState    <= asCh0TransactionDone;
                     
                   else
                   
                     --write to ram and cache
                     
                   
                   end if;

               else

                   --data in cache not found
                                  
                   if ch0Wr = '0' then

                     --read 64 bytes from ddr and store in next cache line
                   
                   
                     
                   else
                   
                     --write to ddr only

                     m00_axi_awaddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
                     m00_axi_awvalid   <= '1';
                     m00_axi_awlen     <= x"00";
               
                     m00_axi_wvalid    <= '0';
                     m00_axi_bready    <= '0';
                     
                     if m00_axi_awready = '1' then
                        
                        axiState <= asCh0Write1;
                        
                     end if;
                                              
                   end if;

               end if;
               
            when asCh0Read0 =>
            
                             
                          
               --read
               m00_axi_araddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
               m00_axi_arvalid   <= '1';
               m00_axi_arlen     <= x"00";
               m00_axi_rready    <= '0';

               if m00_axi_arready = '1' then
                  
                  axiState <= asCh0Read1;
                  
               end if;

            when asCh0Read1 =>

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
               
--             when asCh0Read2 =>
             
--               ch0Ready <= '1';
               
--               if ch0CE = '0' then
               
--                  ch0Ready <= '0';
--                  axiState <= asIdle;
                  
--              end if;
            
            when asCh0Write0 =>
            
               m00_axi_awaddr    <= x"0" & ch0A( 27 downto 4 ) & x"0";    --128 bit adr
               m00_axi_awvalid   <= '1';
               m00_axi_awlen     <= x"00";
         
               m00_axi_wvalid    <= '0';
               m00_axi_bready    <= '0';
               
               if m00_axi_awready = '1' then
                  
                  axiState <= asCh0Write1;
                  
               end if;

            when asCh0Write1 =>

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
            
               m00_axi_wvalid <= '0';
               m00_axi_bready <= '1';
                      
               if m00_axi_bvalid = '1' then
               
                  m00_axi_bready <= '0';
                  
                  axiState <= asCh0TransactionDone;
              
              end if;
               
            when asCh0TransactionDone =>
            
               ch0Ready <= '1';
               
               if ch0CE = '0' then
               
                  ch0Ready <= '0';
                  axiState <= asIdle;
               
               end if;

            when asCh1Read0 =>
            
               m00_axi_araddr <= ch1DmaPointer;
               
               m00_axi_arlen  <= ch1DmaRequestLength;
               
               m00_axi_rready    <= '0';
               
               m00_axi_arvalid   <= '1';
               
               if m00_axi_arready = '1' then
               
                  axiState <= asCh1Read1;
               
               end if;
            
            when asCh1Read1 =>
            
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
            
               ch1BufAWr         <= "0";
               m00_axi_rready    <= '0';
               m00_axi_arvalid   <= '0';
               
               ch1DmaRequestLatched <= "00";
               
               ch1DmaPointer  <= std_logic_vector( unsigned( ch1DmaPointer ) + unsigned( ch1DmaRequestPtrAdd ) );

               axiState <= asIdle;
               
            when others =>
            
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
         
      else
            
         case registerState is
         
            when rsWaitForRegAccess =>
               
               --clear triggers
            
            
               ready <= '0';
               
               if ce = '1' then
               
                  --no waitstates
                  ready <= '1';
                  
                  case a( 7 downto 0 ) is 
               
                     --0x00 r- id                      
                     when x"00" =>
                     
                        dout  <= x"8000000c";   -- axi dma id
                                                
                     --0x04 r- component version                       
                     when x"01" =>
                     
                        dout  <= x"20250214";

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

                     when others =>
                     
                        dout  <= ( others => '0' );
                  
                  end case;
               
                  registerState  <= rsWaitForBusCycleEnd;
                  
               end if;
               
            when rsWaitForBusCycleEnd =>
            
               --wait for the bus cycle to end
               
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
