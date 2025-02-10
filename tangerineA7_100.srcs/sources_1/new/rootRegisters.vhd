

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity rootRegisters is
generic(

    clockFreq               : integer := 100000000

);


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

end rootRegisters;

architecture Behavioral of rootRegisters is

--constants

constant tickTimerPrescalerValue:   integer:=   ( clockFreq / 1000 ) - 1;  --1ms tick timer @clockFreq

--components

--signals

type   regState_T is ( rsWaitForRegAccess, rsWaitForBusCycleEnd );
signal registerState:       regState_T;

--tick timer
signal tickTimerReset:              std_logic;
signal tickTimerPrescalerCounter:   std_logic_vector( 31 downto 0 );
signal tickTimerCounter:            std_logic_vector( 31 downto 0 );

-- frameTimer signals
signal frameTimerReset:             std_logic;
signal frameTimerCounter:           std_logic_vector( 31 downto 0 );
signal frameTimerPrvVsync:          std_logic;

-- mtime timer signals
signal mtimeTimer:                  std_logic_vector( 63 downto 0 );
signal mtimeTimerCmp:               std_logic_vector( 63 downto 0 );


begin

registers: process( all )
begin

   if rising_edge( clock ) then
   
      if reset = '1' then
      
         vmMode            <= x"0004";
         gpo               <= ( others => '1' );
         mtimeIrq          <= '0';
         
         registerState     <= rsWaitForRegAccess;
         ready             <= '0';
         
         tickTimerReset    <= '0';
         frameTimerReset   <= '0';

         mtimeTimer      <= ( others => '0' );
         mtimeTimerCmp   <= ( others => '0' );
                           
      else
      
         --mtime
        
         mtimeTimer <= std_logic_vector( unsigned( mtimeTimer ) + 1 );
        
         mtimeIrq     <= '0';

         if mtimeTimer = mtimeTimerCmp then
            
            mtimeIrq <= '1';
         
         end if;
      
         case registerState is
         
            when rsWaitForRegAccess =>
               
               --clear triggers
               tickTimerReset <= '0';
               frameTimerReset   <= '0';
            
            
               ready <= '0';
               
               if ce = '1' then
               
                  --no waitstates
                  ready <= '1';
                  
                  case a( 7 downto 0 ) is 
               
                     --0x00 r- id                      
                     when x"00" =>
                     
                        dout  <= x"80000000";   -- root regs id
                                                
                     --0x04 r- component version                       
                     when x"01" =>
                     
                        dout  <= x"20250210";

                     --0x08 w- tickTimerReset                       
                     when x"02" =>
                     
                        if wr = '1' then
                        
                           tickTimerReset <= '1';
                        
                        end if;
                        
                        dout  <= ( others => '0' );
                     
                     --0x0c r- tickTimerCounter
                     when x"03" =>
                     
                        dout <= tickTimerCounter;
                        
                     
                     --0x10 rw frameTimerCounter
                     when x"04" =>
                     
                        dout  <=frameTimerCounter;
                        
                        if wr = '1' then
                        
                           frameTimerReset   <= '1';
                           
                        end if;

                     --0x14 rw gpo
                     when x"05" =>
                     
                        dout  <= gpo;
                        
                        if wr = '1' then
                        
                           gpo   <= din;
                           
                        end if;

                     --0x18 r- gpi
                     when x"06" =>
                     
                        dout  <= gpi;
                                  
                     --0x1c rw videoMuxMode
                     when x"07" =>
                     
                        dout  <= x"0000" & vmMode;
                        
                        if wr = '1' then
                           
                           vmMode   <= din( 15 downto 0 );
                        
                        end if;

                     --0x20 rw mtime low                                             
                     when x"08" => 

                        dout <= mtimeTimer( 31 downto 0 );
                     
                        if wr = '1' then
                            
                            mtimeTimer( 31 downto 0 ) <= din;
                        
                        end if;

                     --0x24 rw mtime high                                             
                     when x"09" => 

                        dout <= mtimeTimer( 63 downto 32 );
                     
                        if wr = '1' then
                            
                            mtimeTimer( 63 downto 32 ) <= din;
                        
                        end if;
                     
                     --0x28 rw mtimeCmp low                                            
                     when x"0a" => 

                        dout <= mtimeTimerCmp( 31 downto 0 );
                     
                        if wr = '1' then
                            
                            mtimeTimerCmp( 31 downto 0 ) <= din;
                        
                        end if;

                     --0x2c rw mtimeCmp high                                             
                     when x"0b" => 

                        dout <= mtimeTimerCmp( 63 downto 32 );
                     
                        if wr = '1' then
                            
                            mtimeTimerCmp( 63 downto 32 ) <= din;
                        
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

-- tick timer process
tickTimer: process( all )
begin

   if rising_edge( clock ) then
   
      if reset = '1' then
         
         tickTimerPrescalerCounter  <= ( others => '0' );
         tickTimerCounter           <= ( others => '0' );
         
      
      else
      
         if tickTimerPrescalerCounter /= x"00000000" then
            
            tickTimerPrescalerCounter <= std_logic_vector( unsigned( tickTimerPrescalerCounter ) - 1 );
            
         else
         
            tickTimerPrescalerCounter <= std_logic_vector( to_unsigned( tickTimerPrescalerValue, tickTimerPrescalerCounter'length ) );
            
            tickTimerCounter <= std_logic_vector( unsigned( tickTimerCounter ) + 1 );
         
         end if;
      
         if tickTimerReset = '1' then

            tickTimerPrescalerCounter  <= ( others => '0' );
            tickTimerCounter           <= ( others => '0' );
         
         end if;
               
      end if;  --reset = '1'
   
   end if; --rising_edge( tickTimerClock )

end process;   

-- frame timer process
frameTimerProcess: process( all )
begin
   
   if rising_edge( clock ) then

      if frameTimerReset = '1' then
      
         frameTimerCounter    <= ( others => '0' );
         frameTimerPrvVsync   <= vsync;
         
      else
      
         frameTimerPrvVsync <= vsync;
         
         
         if frameTimerPrvVsync = '0' and vsync = '1' then
      
            frameTimerCounter <= std_logic_vector( unsigned( frameTimerCounter ) + 1 );
            
         end if;
      
      end if;
   
   end if; -- rising_edge( frameTimerClock )
end process; 

end Behavioral;
