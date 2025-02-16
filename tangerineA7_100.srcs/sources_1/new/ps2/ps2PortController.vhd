
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity ps2PortController is
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
end ps2PortController;

architecture Behavioral of ps2PortController is

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

--constants

--clock pulse width while initiating ps2 write
constant clockPulseTimerValue:   integer:=   32 + ( 100 * 100 );  --100us @ 100MHz
constant watchdogTimerPeriod:    integer:=   50000000;         --500ms @ 100MHz

--signals
--ps2
signal ps2ClockSync:          std_logic;
signal ps2DataSync:           std_logic;

signal ps2DataCounter:        std_logic_vector( 3 downto 0 );
signal ps2WatchdogTimer:      std_logic_vector( 31 downto 0 );

signal ps2Parity:             std_logic;

signal ps2DataInBuf:          std_logic_vector( 7 downto 0 );

--ps2a write
signal ps2ClockPulseTimer:    std_logic_vector( 15 downto 0 );
signal ps2DataOutBuf:         std_logic_vector( 7 downto 0 );
signal ps2WriteMode:          std_logic;

--fsm
type ps2State_t is ( ps2StartH, ps2StartL, ps2DataH, ps2DataL, ps2ParityH, ps2ParityL, ps2StopH, ps2StopL,
                     ps2WrPulseClock, ps2WrStarth, ps2WrStartL, ps2wrDataH, ps2wrDataL, ps2wrParityH,ps2wrParityL, ps2wrStopH, ps2wrStopL, ps2WrAckL 
                     );
                  
signal ps2State:              ps2State_t;

begin


--sync ps2 inputs
inputSyncPs2AInst: inputSync
   generic map(
        inputWidth => 2
    )

    port map(

        clock              => clock,
        signalInput(0)     => ps2Clock,
        signalInput(1)     => ps2Data,
        signalOutput(0)    => ps2ClockSync,
        signalOutput(1)    => ps2DataSync

    );


ps2TxActive <= ps2WriteMode;

--ps2 controller

ps2a: process ( all )
begin

   if rising_edge( clock ) then
   
      if reset = '1' then
         
         ps2State             <= ps2starth;
         ps2DataInBuf         <= ( others => '0' );
         ps2RxData            <= ( others => '0' );
         ps2DataOutBuf        <= ( others => '0' );
         
         ps2Clock             <= 'Z';
         ps2Data              <= 'Z';
            
         ps2Parity            <= '1';
         ps2WriteMode         <= '0';
         
         ps2ClockPulseTimer   <= ( others => '0' );
         ps2WatchdogTimer     <= std_logic_vector( to_unsigned( watchdogTimerPeriod, 32 ) );

      else
         
         --latch write mode trigger
         
         if ps2TxTrigger = '1' then
         
            ps2WriteMode  <= '1';
            
         end if;

         if ps2State /= ps2Starth then
         
            if ps2WatchdogTimer /= x"00000000" then
               
               ps2WatchdogTimer <= std_logic_vector( unsigned( ps2WatchdogTimer ) - 1 ); 
         
            else
            
               --reset fsm if transmission not finished in desired time
               
               ps2State      <= ps2Starth;
               ps2WriteMode  <= '0';
               
           end if;
           
         end if;      
      
         case ps2State is
         
            when ps2Starth =>
            
               ps2Clock            <= 'Z';
               ps2Data             <= 'Z';
               
               if ps2WriteMode = '1' then
               
                  ps2Clock   <= '0';
                  ps2Data    <= 'Z';

                  ps2DataOutBuf       <= ps2TxData;
                  ps2ClockPulseTimer  <= std_logic_vector( to_unsigned( clockPulseTimerValue, 16 ) );
                  ps2WatchdogTimer    <= std_logic_vector( to_unsigned( watchdogTimerPeriod, 32 ) );
                  
                  ps2State            <= ps2WrPulseClock;                  
               
               end if;


               if ps2ClockSync = '0' then
         
                     ps2WatchdogTimer    <= std_logic_vector( to_unsigned( watchdogTimerPeriod, 32 ) );

                     ps2Parity  <= '1';      
                     ps2State   <= ps2Startl;            
                                    
               end if;

            when ps2Startl =>

               if ps2ClockSync = '1' then
               
                  if ps2DataSync = '0' then
                  
                     ps2State <= ps2datah;            

                     ps2DataCounter <= x"7";
                                       
                  end if;               
 
               end if;

            when ps2datah =>
            
               if ps2ClockSync = '0' then
               
                  ps2State         <= ps2datal;            
               
               end if;
            
            when ps2datal =>
            
               if ps2ClockSync = '1' then
               
                  if ps2DataSync = '1' then
                  
                     ps2Parity  <= not ps2Parity;
                  
                  end if;
                  
                  ps2DataInBuf  <= ps2DataSync & ps2DataInBuf( 7 downto 1 );
                        
                  if ps2DataCounter /= x"0" then
                  
                     ps2DataCounter   <= std_logic_vector( unsigned( ps2DataCounter ) - 1 );
                     
                     ps2State         <= ps2datah;            

                  else
                  
                     ps2State         <= ps2parityh;
                  
                  end if;
                    
               end if;

            when ps2parityh =>

               if ps2ClockSync = '0' then
                  
                  ps2RxData  <= ps2DataInBuf;
                                    
                  ps2State <= ps2parityl;            
               
               end if;

            when ps2parityl =>
               
               if ps2ClockSync = '1' then
               
                  if ps2FiFoFull = '0' and ps2DataSync = ps2Parity then
                  
                     ps2FiFoWrEn <= '1';
                     
                  end if;

                  ps2State <= ps2stoph;            
               
               end if;
         
            when ps2stoph =>

               ps2FiFoWrEn <= '0';

               if ps2ClockSync = '0' then
               
                  ps2State <= ps2stopl;            
               
               end if;

            when ps2stopl =>
            
               if ps2ClockSync = '1' then
               
                  ps2State <= ps2starth;            
               
               end if;


            when ps2WrPulseClock =>
            
               if ps2ClockPulseTimer = x"0020" then
               
                  --release ps2aClock early, and give time for it to stabilize

                  ps2Clock   <= 'Z';
                  ps2Data    <= '0';
               
               end if;            
            
               if ps2ClockPulseTimer /= x"0000" then
               
         
                  ps2ClockPulseTimer  <= std_logic_vector( unsigned( ps2ClockPulseTimer ) - 1 );
               
               else
               
                  ps2Clock   <= 'Z';
                  ps2Data    <= '0';
                                 
                  ps2State   <= ps2WrStartH;
                  
               end if;
               
            when ps2WrStartH =>

               ps2Data    <= '0';

               if ps2ClockSync = '0' then
                           
                     ps2Parity        <= '1';      
                     ps2DataCounter   <= x"7";       

                     ps2State         <= ps2WrDataL;            
                                    
               end if;            
            
            

            when ps2WrDataL =>
            
               if ps2DataOutBuf( 0 ) = '1' then
                                 
                  ps2Data    <= 'Z';
               
               else
               
                  ps2Data    <= '0';
                  
               end if;


               if ps2ClockSync = '1' then

                  if ps2DataOutBuf( 0 ) = '1' then
                  
                     ps2Parity  <= not ps2Parity;
                  
                  end if;
                                   
                  ps2DataOutBuf <= '0' & ps2DataOutBuf( 7 downto 1 );
               
                  ps2State         <= ps2WrDataH;            
               
               end if;
            
            when ps2WrDataH =>
            
               if ps2ClockSync = '0' then
                                                         
                  if ps2DataCounter /= x"0" then
                  
                     ps2DataCounter   <= std_logic_vector( unsigned( ps2DataCounter ) - 1 );
                     
                     ps2State         <= ps2WrdataL;            

                  else
                                   
                     ps2State         <= ps2WrParityL;
                  
                  end if;
                    
               end if;
            
            when ps2WrParityL =>

               if ps2Parity = '1' then
               
                  ps2Data <= 'Z';
               
               else
               
                  ps2Data <= '0';
                  
               end if;

               if ps2ClockSync = '1' then
                                                      
                  ps2State <= ps2WrParityH;            

               
               end if;

            when ps2WrParityH =>
                              
               if ps2ClockSync = '0' then
                    
                  ps2Data <= 'Z';          

                  ps2State <= ps2WrStopL;            
               
               end if;

            when ps2WrStopL =>
               
               if ps2ClockSync = '1' then
               
                  ps2State <= ps2WrStopH;            
               
               end if;

            when ps2WrStopH =>
               
               if ps2ClockSync = '0' then
                  
                  ps2State <= ps2WrAckL;            
               
               end if;

            when ps2WrAckL =>

               if ps2ClockSync = '1' then
               
                  ps2WriteMode  <= '0';
                  
                  ps2State <= ps2StartH;            
               
               end if;

            when others =>
            
               ps2State <= ps2StartH;
         
         end case;
      
      end if;
   
   end if;

end process;


end Behavioral;
