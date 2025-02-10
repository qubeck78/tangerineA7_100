library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity videoMux is
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
end videoMux;

architecture behavior of videoMux is

begin

videoMux: process( pixelClock )

begin

if rising_edge( pixelClock ) then

   if resetn = '0' then

      vgaHS    <= '0';
      vgaVS    <= '0';
      vgaDE    <= '0';
                
      vgaR  	<= ( others => '0' );
      vgaG     <= ( others => '0' );
      vgaB     <= ( others => '0' );

    else
    
      vgaHS    <= pgHSync;
      vgaVS    <= pgVSync;
      vgaDE    <= pgDe;

      --text over gfx mode
      if	pgR = x"00" and pgG = x"00" and pgB = x"00" then
                        
         vgaR        <= pggR( 7 downto 0 );
         vgaG        <= pggG( 7 downto 0 );
         vgaB        <= pggB( 7 downto 0 );
                        
        --gray color -> dim background
        elsif pgR = x"80" and pgG = x"80" and pgB = x"80" then
                                     
         vgaR        <= "0" & pggR( 7 downto 1 );
         vgaG        <= "0" & pggG( 7 downto 1 );
         vgaB        <= "0" & pggB( 7 downto 1 );

      else
    
         vgaR        <= pgR( 7 downto 3 ) & "000";
         vgaG        <= pgG( 7 downto 2 ) & "00";
         vgaB        <= pgB( 7 downto 3 ) & "000";
                    
      end if;
    
   end if;
            
end if;

end process;  


end behavior;
