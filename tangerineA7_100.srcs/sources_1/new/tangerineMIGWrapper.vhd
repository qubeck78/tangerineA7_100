library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity tangerineMIGWrapper is
port ( 

   init_calib_complete: out std_logic;

   --ddr3 interface
   
   ddr3_addr:        out std_logic_vector( 13 downto 0 ); 
   ddr3_ba:          out std_logic_vector( 2 downto 0 );
   ddr3_cas_n:       out std_logic;              
   ddr3_ck_n:        out std_logic_vector( 0 downto 0 );
   ddr3_ck_p:        out std_logic_vector( 0 downto 0 );
   ddr3_cke:         out std_logic_vector( 0 downto 0 );
   ddr3_ras_n:       out std_logic;
   ddr3_reset_n:     out std_logic;
   ddr3_we_n:        out std_logic;
   ddr3_dq:          inout std_logic_vector( 15 downto 0 );
   ddr3_dqs_n:       inout std_logic_vector( 1 downto 0 );
   ddr3_dqs_p:       inout std_logic_vector( 1 downto 0 );                     
   ddr3_dm:          out std_logic_vector( 1 downto 0 );
   ddr3_odt:         out std_logic_vector( 0 downto 0 );
   
   --Application interface ports
   ui_clk:           out std_logic;
   ui_clk_sync_rst:  out std_logic;
   mmcm_locked:      out std_logic;
   aresetn:          in std_logic;
   app_sr_req:       in std_logic;
   app_ref_req:      in std_logic;
   app_zq_req:       in std_logic;
   app_sr_active:    out std_logic;
   app_ref_ack:      out std_logic;
   app_zq_ack:       out std_logic;
   
   --Slave Interface Write Address Ports
   s_axi_awid:       in std_logic_vector( 3 downto 0 );
   s_axi_awaddr:     in std_logic_vector( 27 downto 0 );
   s_axi_awlen:      in std_logic_vector( 7 downto 0 );
   s_axi_awsize:     in std_logic_vector( 2 downto 0 );
   s_axi_awburst:    in std_logic_vector( 1 downto 0 );
   s_axi_awlock:     in std_logic_vector( 0 downto 0 );
   s_axi_awcache:    in std_logic_vector( 3 downto 0 );
   s_axi_awprot:     in std_logic_vector( 2 downto 0 );
   s_axi_awqos:      in std_logic_vector( 3 downto 0 );
   s_axi_awvalid:    in std_logic;
   s_axi_awready:    out std_logic;
   
   --Slave Interface Write Data Ports
   s_axi_wdata:      in std_logic_vector( 127 downto 0 );
   s_axi_wstrb:      in std_logic_vector( 15 downto 0 );
   s_axi_wlast:      in std_logic;
   s_axi_wvalid:     in std_logic;
   s_axi_wready:     out std_logic;
   
   --Slave Interface Write Response Ports
   s_axi_bid:        out std_logic_vector( 3 downto 0 );
   s_axi_bresp:      out std_logic_vector( 1 downto 0 );
   s_axi_bvalid:     out std_logic;
   s_axi_bready:     in std_logic;
   
   --Slave Interface Read Address Ports
   s_axi_arid:       in std_logic_vector( 3 downto 0 );
   s_axi_araddr:     in std_logic_vector( 27 downto 0 );
   s_axi_arlen:      in std_logic_vector( 7 downto 0 );
   s_axi_arsize:     in std_logic_vector( 2 downto 0 );
   s_axi_arburst:    in std_logic_vector( 1 downto 0 );
   s_axi_arlock:     in std_logic_vector( 0 downto 0 );
   s_axi_arcache:    in std_logic_vector( 3 downto 0 );
   s_axi_arprot:     in std_logic_vector( 2 downto 0 );
   s_axi_arqos:      in std_logic_vector( 3 downto 0 );
   s_axi_arvalid:    in std_logic;
   s_axi_arready:    out std_logic;
   
   --Slave Interface Read Data Ports
   s_axi_rid:        out std_logic_vector( 3 downto 0 );
   s_axi_rdata:      out std_logic_vector( 127 downto 0 );
   s_axi_rresp:      out std_logic_vector( 1 downto 0 );
   s_axi_rlast:      out std_logic;
   s_axi_rvalid:     out std_logic;
   s_axi_rready:     in std_logic;
   
   --System Clock Ports
   sys_clk_i:        in std_logic;
   sys_rst:          in std_logic

);
end tangerineMIGWrapper;

architecture Behavioral of tangerineMIGWrapper is

--components

component mig_7series_tangerine is
port ( 

   init_calib_complete: out std_logic;

   --ddr3 memory interface
   ddr3_addr:        out std_logic_vector( 13 downto 0 ); 
   ddr3_ba:          out std_logic_vector( 2 downto 0 );
   ddr3_cas_n:       out std_logic;              
   ddr3_ck_n:        out std_logic_vector( 0 downto 0 );
   ddr3_ck_p:        out std_logic_vector( 0 downto 0 );
   ddr3_cke:         out std_logic_vector( 0 downto 0 );
   ddr3_ras_n:       out std_logic;
   ddr3_reset_n:     out std_logic;
   ddr3_we_n:        out std_logic;
   ddr3_dq:          inout std_logic_vector( 15 downto 0 );
   ddr3_dqs_n:       inout std_logic_vector( 1 downto 0 );
   ddr3_dqs_p:       inout std_logic_vector( 1 downto 0 );                     
   ddr3_dm:          out std_logic_vector( 1 downto 0 );
   ddr3_odt:         out std_logic_vector( 0 downto 0 );
   
   --Application interface ports
   ui_clk:           out std_logic;
   ui_clk_sync_rst:  out std_logic;
   mmcm_locked:      out std_logic;
   aresetn:          in std_logic;
   app_sr_req:       in std_logic;
   app_ref_req:      in std_logic;
   app_zq_req:       in std_logic;
   app_sr_active:    out std_logic;
   app_ref_ack:      out std_logic;
   app_zq_ack:       out std_logic;
   
   --Slave Interface Write Address Ports
   s_axi_awid:       in std_logic_vector( 3 downto 0 );
   s_axi_awaddr:     in std_logic_vector( 27 downto 0 );
   s_axi_awlen:      in std_logic_vector( 7 downto 0 );
   s_axi_awsize:     in std_logic_vector( 2 downto 0 );
   s_axi_awburst:    in std_logic_vector( 1 downto 0 );
   s_axi_awlock:     in std_logic_vector( 0 downto 0 );
   s_axi_awcache:    in std_logic_vector( 3 downto 0 );
   s_axi_awprot:     in std_logic_vector( 2 downto 0 );
   s_axi_awqos:      in std_logic_vector( 3 downto 0 );
   s_axi_awvalid:    in std_logic;
   s_axi_awready:    out std_logic;
   
   --Slave Interface Write Data Ports
   s_axi_wdata:      in std_logic_vector( 127 downto 0 );
   s_axi_wstrb:      in std_logic_vector( 15 downto 0 );
   s_axi_wlast:      in std_logic;
   s_axi_wvalid:     in std_logic;
   s_axi_wready:     out std_logic;
   
   --Slave Interface Write Response Ports
   s_axi_bid:        out std_logic_vector( 3 downto 0 );
   s_axi_bresp:      out std_logic_vector( 1 downto 0 );
   s_axi_bvalid:     out std_logic;
   s_axi_bready:     in std_logic;
   
   --Slave Interface Read Address Ports
   s_axi_arid:       in std_logic_vector( 3 downto 0 );
   s_axi_araddr:     in std_logic_vector( 27 downto 0 );
   s_axi_arlen:      in std_logic_vector( 7 downto 0 );
   s_axi_arsize:     in std_logic_vector( 2 downto 0 );
   s_axi_arburst:    in std_logic_vector( 1 downto 0 );
   s_axi_arlock:     in std_logic_vector( 0 downto 0 );
   s_axi_arcache:    in std_logic_vector( 3 downto 0 );
   s_axi_arprot:     in std_logic_vector( 2 downto 0 );
   s_axi_arqos:      in std_logic_vector( 3 downto 0 );
   s_axi_arvalid:    in std_logic;
   s_axi_arready:    out std_logic;
   
   --Slave Interface Read Data Ports
   s_axi_rid:        out std_logic_vector( 3 downto 0 );
   s_axi_rdata:      out std_logic_vector( 127 downto 0 );
   s_axi_rresp:      out std_logic_vector( 1 downto 0 );
   s_axi_rlast:      out std_logic;
   s_axi_rvalid:     out std_logic;
   s_axi_rready:     in std_logic;
   
   --System Clock Ports
   sys_clk_i:        in std_logic;
   sys_rst:          in std_logic

);
end component;


begin

tangerineMIGInst:mig_7series_tangerine
port map ( 

   ddr3_addr      => ddr3_addr,
   ddr3_ba        => ddr3_ba,
   ddr3_cas_n     => ddr3_cas_n,
   ddr3_ck_n      => ddr3_ck_n,
   ddr3_ck_p      => ddr3_ck_p,
   ddr3_cke       => ddr3_cke,
   ddr3_ras_n     => ddr3_ras_n,
   ddr3_reset_n   => ddr3_reset_n,
   ddr3_we_n      => ddr3_we_n,
   ddr3_dq        => ddr3_dq,
   ddr3_dqs_n     => ddr3_dqs_n,
   ddr3_dqs_p     => ddr3_dqs_p,
   init_calib_complete  => init_calib_complete,
   ddr3_dm        => ddr3_dm,
   ddr3_odt       => ddr3_odt,
   
   --Application interface ports
   ui_clk         => ui_clk,
   ui_clk_sync_rst   => ui_clk_sync_rst,
   mmcm_locked    => mmcm_locked,
   aresetn        => aresetn,
   app_sr_req     => app_sr_req,
   app_ref_req    => app_ref_req,
   app_zq_req     => app_zq_req,
   app_sr_active  => app_sr_active,
   app_ref_ack    => app_ref_ack,
   app_zq_ack     => app_zq_ack,
   
   --Slave Interface Write Address Ports
   s_axi_awid     => s_axi_awid,
   s_axi_awaddr   => s_axi_awaddr,
   s_axi_awlen    => s_axi_awlen,
   s_axi_awsize   => s_axi_awsize,
   s_axi_awburst  => s_axi_awburst,
   s_axi_awlock   => s_axi_awlock,
   s_axi_awcache  => s_axi_awcache,
   s_axi_awprot   => s_axi_awprot,
   s_axi_awqos    => s_axi_awqos,
   s_axi_awvalid  => s_axi_awvalid,
   s_axi_awready  => s_axi_awready,
   
   --Slave Interface Write Data Ports
   s_axi_wdata    => s_axi_wdata,
   s_axi_wstrb    => s_axi_wstrb,
   s_axi_wlast    => s_axi_wlast,
   s_axi_wvalid   => s_axi_wvalid,
   s_axi_wready   => s_axi_wready,
   
   --Slave Interface Write Response Ports
   s_axi_bid      => s_axi_bid,
   s_axi_bresp    => s_axi_bresp,
   s_axi_bvalid   => s_axi_bvalid,
   s_axi_bready   => s_axi_bready,
   
   --Slave Interface Read Address Ports
   s_axi_arid     => s_axi_arid,
   s_axi_araddr   => s_axi_araddr,
   s_axi_arlen    => s_axi_arlen,
   s_axi_arsize   => s_axi_arsize,
   s_axi_arburst  => s_axi_arburst,
   s_axi_arlock   => s_axi_arlock,
   s_axi_arcache  => s_axi_arcache,
   s_axi_arprot   => s_axi_arprot,
   s_axi_arqos    => s_axi_arqos,
   s_axi_arvalid  => s_axi_arvalid,
   s_axi_arready  => s_axi_arready,
   
   --Slave Interface Read Data Ports
   s_axi_rid      => s_axi_rid,
   s_axi_rdata    => s_axi_rdata,
   s_axi_rresp    => s_axi_rresp,
   s_axi_rlast    => s_axi_rlast,
   s_axi_rvalid   => s_axi_rvalid,
   s_axi_rready   => s_axi_rready,
   
   --System Clock Ports
   sys_clk_i      => sys_clk_i,
   sys_rst        => sys_rst

);


end Behavioral;
