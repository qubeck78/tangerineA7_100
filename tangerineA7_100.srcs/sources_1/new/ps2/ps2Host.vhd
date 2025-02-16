library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

--https://www.burtonsys.com/ps2_chapweske.htm
--https://www.eecg.utoronto.ca/~jayar/ece241_08F/AudioVideoCores/ps2/ps2.html
--http://www.ue.eti.pg.gda.pl/fpgalab/info_kbd/info_kbd_en.html
--https://www.networktechinc.com/ps2-prots.html
--https://www.youtube.com/watch?v=nXH-jXimE0g

entity ps2Host is
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


--VIVADO bug/feature? :)
--to get inout working in block design 'Synthesis options/Global' has to be selected while generating output products of block design
   ps2aClock:  inout    std_logic;
   ps2aData:   inout    std_logic;
   
   ps2bClock:  inout    std_logic;
   ps2bData:   inout    std_logic
 );
end ps2Host;

architecture Behavioral of ps2Host is

--components

component ps2PortController is
port( 

   clock:         in    std_logic;
   reset:         in    std_logic;
   
   --data to send
   ps2TxData:     in    std_logic_vector( 7 downto 0 );
   ps2TxTrigger:  in    std_logic;
   ps2TxActive:   out   std_logic;
   
   --received data ( fifo interface )
   ps2RxData:     out   std_logic_vector( 7 downto 0 );
   ps2FiFoWrEn:   out   std_logic;
   ps2FiFoFull:   in    std_logic;
   
   --ps2 port
   ps2Clock:      inout std_logic;
   ps2Data:       inout std_logic

);
end component;

component ps2ControllerFifo
port(
  
    clk:          in    std_logic;
    rst:          in    std_logic;
    din:          in    std_logic_vector(7 DOWNTO 0);
    wr_en:        in    std_logic;
    rd_en:        in    std_logic;
    dout:         out   std_logic_vector(7 DOWNTO 0);
    full:         out   std_logic;
    empty:        out   std_logic;
    wr_rst_busy:  out   std_logic;
    rd_rst_busy:  out   std_logic 

);
end component;


--signals

--registers
type   regState_T is ( rsWaitForRegAccess, rsWaitForBusCycleEnd );
signal registerState:       regState_T;

--ps2a fifo ( keyboard )
signal ps2aFifoWrEn:      std_logic;
signal ps2aFifoRdEn:      std_logic;
signal ps2aFifoDOut:      std_logic_vector( 7 downto 0 );
signal ps2aFifoFull:      std_logic;
signal ps2aFifoEmpty:     std_logic;

--ps2b fifo ( mouse )
signal ps2bFifoWrEn:      std_logic;
signal ps2bFifoRdEn:      std_logic;
signal ps2bFifoDOut:      std_logic_vector( 7 downto 0 );
signal ps2bFifoFull:      std_logic;
signal ps2bFifoEmpty:     std_logic;

--ps2

signal ps2aDataIn:            std_logic_vector( 7 downto 0 );
signal ps2aDataOut:           std_logic_vector( 7 downto 0 );

signal ps2aWriteModeTrigger:  std_logic;
signal ps2aTxActive:          std_logic;

signal ps2bDataIn:            std_logic_vector( 7 downto 0 );
signal ps2bDataOut:           std_logic_vector( 7 downto 0 );

signal ps2bWriteModeTrigger:  std_logic;
signal ps2bTxActive:          std_logic;

--axi
type axiState_T is ( asIdle, asRead0, asWrite0 );
signal axiState:     axiState_T;

begin

--assign clocks


--plase ps2a port controller ( keyboard )
ps2aControllerInst: ps2PortController
port map( 

   clock          => clock,
   reset          => reset,
   
   --data to send
   ps2TxData      => ps2aDataOut,
   ps2TxTrigger   => ps2aWriteModeTrigger,
   ps2TxActive    => ps2aTxActive,
   
   --received data ( fifo interface )
   ps2RxData      => ps2aDataIn,
   ps2FiFoWrEn    => ps2aFifoWrEn,
   ps2FiFoFull    => ps2aFifoFull,
   
   --ps2 port
   ps2Clock       => ps2aClock,
   ps2Data        => ps2aData

);

--plase ps2b port controller ( mouse )
ps2bControllerInst: ps2PortController
port map( 

   clock          => clock,
   reset          => reset,
   
   --data to send
   ps2TxData      => ps2bDataOut,
   ps2TxTrigger   => ps2bWriteModeTrigger,
   ps2TxActive    => ps2bTxActive,
   
   --received data ( fifo interface )
   ps2RxData      => ps2bDataIn,
   ps2FiFoWrEn    => ps2bFifoWrEn,
   ps2FiFoFull    => ps2bFifoFull,
   
   --ps2 port
   ps2Clock       => ps2bClock,
   ps2Data        => ps2bData

);

--place ps2a fifo ( keyboard )
ps2aFifoInst:ps2ControllerFifo
port map(
    clk     => clock,
    rst     => reset,
    din     => ps2aDataIn,
    wr_en   => ps2aFifoWrEn,
    rd_en   => ps2aFifoRdEn,
    dout    => ps2aFifoDOut,
    full    => ps2aFifoFull,
    empty   => ps2aFifoEmpty
  );

--place ps2b fifo ( mouse )
ps2bFifoInst:ps2ControllerFifo
port map(
    clk     => clock,
    rst     => reset,
    din     => ps2bDataIn,
    wr_en   => ps2bFifoWrEn,
    rd_en   => ps2bFifoRdEn,
    dout    => ps2bFifoDOut,
    full    => ps2bFifoFull,
    empty   => ps2bFifoEmpty
  );

registers: process( all )
begin

   if rising_edge( clock ) then
   
      if reset = '1' then
               
         registerState        <= rsWaitForRegAccess;
         ready                <= '0';

         ps2aFifoRdEn         <= '0';
         ps2aDataOut          <= ( others => '0' );
         ps2aWriteModeTrigger <= '0';
         
         ps2bFifoRdEn         <= '0';
         ps2bDataOut          <= ( others => '0' );
         ps2bWriteModeTrigger <= '0';
      
         
      else

         --clear keyboard fifo read trigger
         ps2aFifoRdEn     <= '0';

         --clear mouse fifo read trigger
         ps2bFifoRdEn     <= '0';
         
         --clear keyboard write trigger
         ps2aWriteModeTrigger <= '0';

         --clear mouse write trigger
         ps2bWriteModeTrigger <= '0';
            
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
                     
                        dout  <= x"8000000a";   -- ps2 host id
                                                
                     --0x04 r- component version                       
                     when x"01" =>
                     
                        dout  <= x"20250215";

                     -- rw keyboardData
                     when x"02" =>
                     
                        if wr = '1' then

                           ps2aDataOut          <= din( 7 downto 0 );
                           ps2aWriteModeTrigger <= '1';
                           
                        else
                        
                           dout           <= x"000000" & ps2aFifoDOut;
                           ps2aFifoRdEn   <= '1';
                        
                        end if;

                     -- r- keyboardStatus                          
                     when x"03" =>
                     
                        dout  <= x"0000000" & "00" & ps2aTxActive & ps2aFifoEmpty;

                     -- rw mouseData
                     when x"04" =>

                        if wr = '1' then
                        
                           ps2bDataOut          <= din( 7 downto 0 );
                           ps2bWriteModeTrigger <= '1';
                        
                        else
                        
                           dout           <= x"000000" & ps2bFifoDOut;
                           ps2bFifoRdEn   <= '1';
                        
                        end if;
                     
                     -- r- mouseStatus                          
                     when x"05" =>
                     
                        dout  <= x"0000000" & "00" & ps2bTxActive & ps2bFifoEmpty;
                        
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

--axiBridge: process( s00_axi_aclk )

--begin
   
--   if rising_edge( s00_axi_aclk ) then
   
--      if s00_axi_aresetn = '0' then
      
--         axiState          <= asIdle;
                  
--         s00_axi_awready   <= '0';
--         s00_axi_wready    <= '0';
--         s00_axi_bresp     <= ( others => '0' );
--         s00_axi_bvalid    <= '0';
--         s00_axi_arready   <= '0';
--         s00_axi_rdata     <= ( others => '0' );
--         s00_axi_rresp     <= ( others => '0' );
--         s00_axi_rvalid    <= '0';
         
--         ps2aFifoRdEn  <= '0';
--         ps2aDataOut       <= ( others => '0' );
--         ps2aWriteModeTrigger <= '0';
         
--         ps2bFifoRdEn  <= '0';
--         ps2bDataOut       <= ( others => '0' );
--         ps2bWriteModeTrigger <= '0';

--      else
      
--         --clear keyboard fifo read trigger
--         ps2aFifoRdEn     <= '0';

--         --clear mouse fifo read trigger
--         ps2bFifoRdEn     <= '0';
         
--         --clear keyboard write trigger
--         ps2aWriteModeTrigger <= '0';

--         --clear mouse write trigger
--         ps2bWriteModeTrigger <= '0';
         
--         case axiState is
         
--            when asIdle =>
            
--               --ready for read address reception
--               s00_axi_arready   <= '1';
               
--               s00_axi_awready   <= '0';

--               --read data not exposed
--               s00_axi_rvalid    <= '0';
               
--               --not ready to write data
--               s00_axi_wready    <= '0';
               
--               --clear write data ack
--               s00_axi_bvalid    <= '0';
               
--               --check read
--               if s00_axi_arvalid = '1' then
               
--                  --read
--                  --we do not accept any more addresses for now
--                  s00_axi_arready   <= '0';
--                  s00_axi_awready   <= '0';
                  
--                  case s00_axi_araddr( 9 downto 2 ) is
                  
--                     -- r- id
--                     when x"00" =>
                     
--                        s00_axi_rdata  <= x"8000000a";
                        
--                     -- r- version 
--                     when x"01" =>
                     
--                        s00_axi_rdata  <= x"20250129";
               
--                     -- rw keyboardData
--                     when x"02" =>
                     
--                        s00_axi_rdata     <= x"000000" & ps2aFifoDOut;
--                        ps2aFifoRdEn  <= '1';

--                     -- r- keyboardStatus                          
--                     when x"03" =>
                     
--                        s00_axi_rdata     <= x"0000000" & "00" & ps2aTxActive & ps2aFifoEmpty;

--                     -- rw mouseData
--                     when x"04" =>
                     
--                        s00_axi_rdata     <= x"000000" & ps2bFifoDOut;
--                        ps2bFifoRdEn  <= '1';

--                     -- r- mouseStatus                          
--                     when x"05" =>
                     
--                        s00_axi_rdata     <= x"0000000" & "00" & ps2bTxActive & ps2bFifoEmpty;

--                     when others =>
                     
--                        s00_axi_rdata  <= x"00000000";
                     
               
--                  end case;
                  
--                  --data exposed
--                  s00_axi_rvalid <= '1';
                  
--                  --check ready
--                  if s00_axi_rready = '0' then

--                     --if not ready, wait'til end of cycle                     
--                     axiState <= asRead0;
                  
--                  end if;
               
--               --check write
--               elsif s00_axi_awvalid = '1' and s00_axi_wvalid = '1'  then
                
--                  --not ready for read address
--                  s00_axi_arready   <= '0';
                  
--                  --ready for write address
--                  s00_axi_awready   <= '1';
--                  s00_axi_wready    <= '1';
--                  s00_axi_bvalid    <= '1';
                  
                  
--                  case s00_axi_awaddr( 9 downto 2 ) is
                     
--                     when x"02" =>
                     
--                        ps2aDataOut          <= s00_axi_wdata( 7 downto 0 );
--                        ps2aWriteModeTrigger <= '1';

--                     when x"04" =>
                     
--                        ps2bDataOut          <= s00_axi_wdata( 7 downto 0 );
--                        ps2bWriteModeTrigger <= '1';
                                   
--                     when others =>
                  
--                  end case;
                  
--                  axiState <= asWrite0;
                  
--               end if;
            
--            when asRead0 =>
            
--               if s00_axi_rready = '1' then

--                  --end read cycle
--                  s00_axi_rvalid <= '0';
--                  axiState       <= asIdle;
                  
--               end if;
            
--            when asWrite0 =>
            
--               --not ready for write address
--               s00_axi_awready   <= '0';
--               s00_axi_wready    <= '0';
            
--               if s00_axi_bready = '1' then

--                  s00_axi_bvalid    <= '0';

--                  axiState       <= asIdle;
               
--               end if;                                 
                               
--            when others =>
            
--               axiState <= asIdle;
                      
--         end case;
            
--      end if;
   
--   end if; 

--end process;



end Behavioral;
