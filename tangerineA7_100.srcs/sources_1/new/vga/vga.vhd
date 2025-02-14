library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity vga is
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
   gfxFbRamDIn:      in    std_logic_vector( 31 downto 0 );
   gfxFbRamA:        out   std_logic_vector( 10 downto 0 );    --2 buffers, 1024 long words each

    --2 dma requests
   vgaDMARequest:    out   std_logic_vector( 1 downto 0 );

   --video output ( VGA )
   vgaRed:           out   std_logic_vector( 7 downto 0 );
   vgaGreen:         out   std_logic_vector( 7 downto 0 );
   vgaBlue:          out   std_logic_vector( 7 downto 0 );
   vgaHS:            out   std_logic;
   vgaVS:            out   std_logic;
   vgaDE:            out   std_logic 
     
);
end vga;

architecture behavior of vga is

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

component pixelGenGfx is
port(
   
   reset:            in  std_logic;
   
   --pixel clock
   pggClock:         in  std_logic;
   
   --video out
   pggR:             out std_logic_vector( 7 downto 0 );
   pggG:             out std_logic_vector( 7 downto 0 );
   pggB:             out std_logic_vector( 7 downto 0 );

   --gfx buffer ram
   gfxBufRamDOut:    in  std_logic_vector( 31 downto 0 );
   gfxBufRamRdA:     out std_logic_vector( 10 downto 0 );

   --2 dma requests
   pggDMARequest:    out std_logic_vector( 1 downto 0 );
   
   --sync gen inputs
   pgVSync:          in  std_logic;
   pgHSync:          in  std_logic;
   pgDe:             in  std_logic;
   pgXCount:         in  std_logic_vector( 11 downto 0 );
   pgYCount:         in  std_logic_vector( 11 downto 0 );
   pgDeX:            in  std_logic;
   pgDeY:            in  std_logic;
   pgPreFetchLine:   in  std_logic;
   pgFetchEnable:    in  std_logic;
   
   -- 720p sync:
   -- 00 : 426x240x16
   -- 01 : 640x360x16

   pgVideoMode:      in  std_logic_vector( 1 downto 0 );
   
   pgEnabled:        in  std_logic
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

--signals

signal resetn:          std_logic;

--registers

type   regState_T is ( rsWaitForRegAccess, rsWaitForBusCycleEnd );
signal registerState:       regState_T;
signal pgVSyncSynClock: std_logic;

--font rom signals
signal fontRomA:        std_logic_vector( 10 downto 0 );
signal fontRomDout:     std_logic_vector( 7 downto 0 );

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

--gfx pixel gen signals
signal pggR:            std_logic_vector( 7 downto 0 );
signal pggG:            std_logic_vector( 7 downto 0 );
signal pggB:            std_logic_vector( 7 downto 0 );

signal pggEnabled:      std_logic;

begin

-- negative reset
resetn   <= not reset;

-- sync VSync to main clock

inputSyncVSInst:inputSync
generic map
(
   inputWidth  => 1
)
port map(
   
   clock             => clock,
   signalInput(0)    => pgVSync,
   signalOutput(0)   => pgVSyncSynClock
   
);



-- place text mode font rom ( 2048 x 8 )

fontPromInst: fontProm 
port map(
    clka    => pixelClock,
    addra   => fontRomA,
    douta   => fontRomDout
);

--Place sync gen / pixel gen txt

txtFbRamClock  <= pixelClock;

--external block ram is 32-bit, convert to 16

videoRamBDout  <= txtFbRamDIn( 15 downto 0 ) when videoRamBA( 0 ) = '0' else txtFbRamDIn( 31 downto 16 ); 
txtFbRamA      <= videoRamBA( 13 downto 1 );

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

-- place pixel gen gfx

pggEnabled   <= '1' when vmMode( 1 downto 0 ) /= "00" else '0';

-- assign clock for gfx buffer ram

gfxFbRamClock  <= not pixelClock;

pixelGenGfxInst:pixelGenGfx
port map(
   
   reset          => reset,
   
   --pixel clock
   pggClock       => pixelClock,
   
   --video out
   pggR           => pggR,
   pggG           => pggG,
   pggB           => pggB,

   --gfx buffer ram
   gfxBufRamDOut  => gfxFbRamDIn,
   gfxBufRamRdA   => gfxFbRamA,

   --2 dma requests
   pggDMARequest  => vgaDMARequest,
   
   --sync gen inputs
   pgVSync        => pgVSync,
   pgHSync        => pgHSync,
   pgDe           => pgDE,
   pgXCount       => pgXCount,
   pgYCount       => pgYCount,
   pgDeX          => pgDeX,
   pgDeY          => pgDeY,
   pgPreFetchLine => pgPreFetchLine,
   pgFetchEnable  => pgFetchEnable,
   
   -- 720p sync:
   -- 00 : 426x240x16
   -- 01 : 640x360x16
   -- 10 : 1280x720x16

   pgVideoMode    => vmMode( 5 downto 4 ),
   
   pgEnabled      => pggEnabled
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

registers: process( all )
begin

   if rising_edge( clock ) then
   
      if reset = '1' then
               
         registerState     <= rsWaitForRegAccess;
         ready             <= '0';
      
         vmMode            <= x"0004";                              
         pgCursorX         <= ( others => '0' );
         pgCursorY         <= ( others => '0' );
         
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
                     
                        dout  <= x"8000000b";   -- vga id
                                                
                     --0x04 r- component version                       
                     when x"01" =>
                     
                        dout  <= x"20250214";

                     --0x08 rw vmMode
                     when x"02" =>
                     
                        dout  <= x"0000" & vmMode;
                        
                        if wr = '1' then
                        
                           vmMode   <= din( 15 downto 0 );
                           
                        end if;

                     --0x0c rw pgCursorX
                     when x"03" =>
                     
                        dout  <= x"000000" & pgCursorX;
                        
                        if wr = '1' then
                        
                           pgCursorX   <= din( 7 downto 0 );
                           
                        end if;

                     --0x10 rw pgCursorY
                     when x"04" =>
                     
                        dout  <= x"000000" & pgCursorY;
                        
                        if wr = '1' then
                        
                           pgCursorY   <= din( 7 downto 0 );
                           
                        end if;

                     --0x14 rw pgVSync
                     when x"05" =>
                     
                        dout  <= x"0000000" & "000" & pgVSyncSynClock;
                        
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



end behavior;
