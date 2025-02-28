

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity is2Controller is
port(
   
   --cpu interface
   reset:      in  std_logic;
   clock:      in  std_logic;
   a:          in  std_logic_vector( 15 downto 0 );
   din:        in  std_logic_vector( 31 downto 0 );
   dout:       out std_logic_vector( 31 downto 0 );
  
   ce:         in  std_logic;
   wr:         in  std_logic;
   dataMask:   in  std_logic_vector( 3 downto 0 );
  
   ready:      out	std_logic;

  
   --i2s interface
   i2sSClk:    out std_logic;
   i2sBClk:    out std_logic;
   i2sLRCk:    out std_logic;
   i2sDOut:    out std_logic
 
 );
end is2Controller;

architecture Behavioral of is2Controller is

--components

component i2sControllerFifo
port (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC
  );
end component;


--signals

type    i2sRegState_T is ( rsWaitForRegAccess, rsWaitForBusCycleEnd );
signal  state:  i2sRegState_T;


-- i2s clock gen
signal  i2sClockGenCounter:     std_logic_vector( 15 downto 0 );
signal  i2sClockGenMax:         std_logic_vector( 15 downto 0 );
signal  i2sClockGenMid:         std_logic_vector( 15 downto 0 );
signal  i2sClock:               std_logic;

-- i2s tx
signal  i2sTxReg:               std_logic_vector( 31 downto 0 );
signal  i2sTxBitCounter:        std_logic_vector( 4 downto 0 );


-- i2s fifo
signal  fifoWr:                 std_logic;
signal  fifoDIn:                std_logic_vector( 31 downto 0 );
signal  fifoAlmostFull:         std_logic;
signal  fifoEmpty:              std_logic;
signal  fifoFull:               std_logic;

signal  fifoRd:                 std_logic;
signal  fifoDOut:               std_logic_vector( 31 downto 0 );

signal  fifoReadCounter:        std_logic_vector( 7 downto 0 );
signal  fifoReadDiv:            std_logic_vector( 7 downto 0 );

-- i2s fifo <- cpu
signal fifoWrCpu:               std_logic;
signal fifoDinCpu:              std_logic_vector( 31 downto 0 );

-- i2s fifo <- dma
signal fifoWrDma:               std_logic;
signal fifoDinDma:              std_logic_vector( 31 downto 0 );




begin

--assign unused ports/signals

i2sSClk     <= 'Z';


-- place audio fifo

--select fifo write source, according to dma mode "00" -> cpu, "01" or "10" -> dma
-- fifoDIn <= fifoDInCpu when dmaMode = "00" else fifoDinDma;
-- fifoWr  <= fifoWrCpu when dmaMode = "00" else fifoWrDma;

fifoDIn <= fifoDInCpu;
fifoWr  <= fifoWrCpu;

i2sControllerFifoInst: i2sControllerFifo
port map(
    rst         => reset,
    wr_clk      => clock,
    rd_clk      => i2sClock,
    din         => fifoDIn,
    wr_en       => fifoWr,
    rd_en       => fifoRd,
    dout        => fifoDOut,
    full        => fifoFull,
    empty       => fifoEmpty,
    prog_full   => fifoAlmostFull
  );


--i2s serial sender
i2sBClk <= i2sClock;

i2sClockGen: process( clock, reset )
begin

    if rising_edge( clock ) then
  
        if reset = '1' then
     
            i2sClockGenCounter  <= ( others => '0' );
            i2sClock            <= '0';

        else

            if i2sClockGenCounter /= i2sClockGenMax then

                i2sClockGenCounter  <= std_logic_vector( unsigned( i2sClockGenCounter ) + 1 );

            else

                i2sClockGenCounter  <= ( others => '0' );
                i2sClock            <= '0';
            
            end if;


            if i2sClockGenCounter = i2sClockGenMid then

                i2sClock    <= '1';

            end if;

        end if; --reset = '1'
    end if; --rising_edge( clock )

end process;

i2sSender:  process( i2sClock, reset )
begin

if falling_edge( i2sClock ) then

   if reset = '1' then
   
      i2sTxReg        <= ( others => '0' );
      
      i2sLRCk         <= '0';
      i2sDOut         <= '0';
      
      fifoReadCounter <= ( others => '0' );
      i2sTxBitCounter   <= ( others => '1' );   --start from bit 31
      
   else
      
      i2sDOut     <= i2sTxReg( to_integer( unsigned( i2sTxBitCounter ) ) );   --output bit from tx reg
      
      i2sTxBitCounter   <= std_logic_vector( unsigned( i2sTxBitCounter ) - 1 );  --decrease bit counter 

      --notice, bit counter holds current value'til next tick      
      if i2sTxBitCounter = "11111" then   --bit 31, clear fifo read
         
         fifoRd      <= '0';
         
      end if;
         
      if i2sTxBitCounter = "10000" then   --bit 16, toggle lrck
         
         i2sLRCk     <= '1';
         
      end if;         
         
      if i2sTxBitCounter = "00000" then --bit 0, toggle lrck, decrease fiforeadcounter and read from fifo if necesary
         
         i2sLRCk     <= '0';
         
         --fiforeadcounter allows reading from fifo every n i2s send cycle
         --so actual signal frequency will be i2s dac freq / ( fifoReadDiv + 1 )
         if fifoReadCounter = x"00" then
         
            --latch new data to i2sTxReg
            i2sTxReg    <= fifoDOut;
            
            --trigger next data read
            if fifoEmpty = '0' then
            
               fifoRd  <= '1';
            
            end if;
            
            fifoReadCounter <= fifoReadDiv;
         
         else
         
            fifoReadCounter <= std_logic_vector( unsigned( fifoReadCounter ) - 1 );
         
         end if;         
         
      end if;
      
   end if;
   
end if;

end process;
 


i2sRegisters: process( all )
begin

  if rising_edge( clock ) then
  
     if reset = '1' then
     
        ready           <= '0';  
        state           <= rsWaitForRegAccess;

        --fifo
        fifoDInCpu      <= ( others => '0' );
        fifoWrCpu       <= '0';
        
        --regs default values

        --48KHz, fifo read div = 1
        i2sClockGenMax      <= x"0069";     -- 162500000 / 105 ~ 1536000
        i2sClockGenMid      <= x"0034";     -- toggle clk val in middle     
        fifoReadDiv         <= x"00";       

     else
     
        case state is
  
           when rsWaitForRegAccess =>
        
           ready <= '0';

           if ce = '1' then
              
                 --cpu wants to access registers
              
                 
                 case a( 7 downto 0 ) is
                 
                    --0x00 r- id                      
                    when x"00" =>
                 
                        dout  <= x"80000007";   -- i2s id
                                        
                    --0x04 r- component version                       
                    when x"01" =>
                 
                        dout  <= x"20250227";
                    
                    --0x08 -w   audioFiFoData                       
                    when x"02" =>
                    
                        dout  <= ( others => '0' );
                           
                        if wr = '1' then

                            fifoDInCpu  <= din;
                            fifoWrCpu   <= '1';

                        end if;

                    --0x0c r-   audioFiFoStatus                       
                    when x"03" =>

                        dout    <= x"0000000" & '0' & fifoFull & fifoAlmostFull & fifoEmpty;

                    --0x10 rw   i2sClockConfig                       
                    when x"04" =>
                    
                        dout    <= i2sClockGenMax & i2sClockGenMid;

                        if wr = '1' then

                            i2sClockGenMax  <= din( 31 downto 16 );
                            i2sClockGenMid  <= din( 15 downto 0 );

                        end if;

                    --0x14 rw   fifoReadConfig                    
                    when x"05" =>

                        dout    <= x"000000" & fifoReadDiv;

                        if wr = '1' then

                            fifoReadDiv <= din( 7 downto 0 );
                        
                        end if;



                    when others =>
                    
                       dout  <= ( others =>'0' );
                 
                 end case; --a
              
                 state <= rsWaitForBusCycleEnd;
              
              end if; --ce = '1'
                       
           
           when rsWaitForBusCycleEnd =>

              ready <= '1';

              --deassert fifo write
              fifoWrCpu         <= '0';

              --wait for bus cycle to end
              if ce = '0' then
              
                 state <= rsWaitForRegAccess;
                 ready <= '0';
                 
              end if;
              
           when others =>
           
              state <= rsWaitForRegAccess;
        
        end case; --state
  
     end if; --reset = '1'
  
  
  end if; --rising_edge( clock )


end process;



end Behavioral;
