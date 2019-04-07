// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Mar 11 00:06:58 2019
// Host        : caplab01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/linyi/Documents/FPGA/Encryption/Encryption.sim/sim_1/synth/func/xsim/sim_encryption_func_synth.v
// Design      : Top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Digit
   (D,
    Q,
    out,
    tick_out_reg_inv,
    clk_IBUF_BUFG);
  output [0:0]D;
  output [0:0]Q;
  input [2:0]out;
  input [1:0]tick_out_reg_inv;
  input clk_IBUF_BUFG;

  wire [0:0]D;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [2:0]out;
  wire [7:7]seg__0;
  wire [1:0]tick_out_reg_inv;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \seg[7]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(seg__0),
        .I3(out[1]),
        .O(D));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tick_out_reg_inv[0]),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tick_out_reg_inv[1]),
        .Q(seg__0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module Digit_0
   (\seg_reg[5]_0 ,
    Q,
    clk_IBUF_BUFG);
  output \seg_reg[5]_0 ;
  input [0:0]Q;
  input clk_IBUF_BUFG;

  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \seg_reg[5]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(\seg_reg[5]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module Digit_1
   (\seg_reg[5]_0 ,
    Q,
    clk_IBUF_BUFG);
  output \seg_reg[5]_0 ;
  input [0:0]Q;
  input clk_IBUF_BUFG;

  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \seg_reg[5]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(\seg_reg[5]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module Digit_2
   (D,
    Q,
    clk_IBUF_BUFG,
    out,
    \seg_reg[5]_0 ,
    \seg_reg[5]_1 ,
    \seg_reg[5]_2 ,
    \seg_reg[5]_3 );
  output [0:0]D;
  input [0:0]Q;
  input clk_IBUF_BUFG;
  input [2:0]out;
  input \seg_reg[5]_0 ;
  input \seg_reg[5]_1 ;
  input \seg_reg[5]_2 ;
  input [0:0]\seg_reg[5]_3 ;

  wire [0:0]D;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [2:0]out;
  wire \seg[5]_i_2_n_0 ;
  wire \seg_reg[5]_0 ;
  wire \seg_reg[5]_1 ;
  wire \seg_reg[5]_2 ;
  wire [0:0]\seg_reg[5]_3 ;
  wire \seg_reg_n_0_[5] ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[5]_i_2 
       (.I0(\seg_reg_n_0_[5] ),
        .I1(\seg_reg[5]_1 ),
        .I2(out[1]),
        .I3(\seg_reg[5]_2 ),
        .I4(out[0]),
        .I5(\seg_reg[5]_3 ),
        .O(\seg[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(\seg_reg_n_0_[5] ),
        .R(1'b0));
  MUXF7 \seg_reg[5]_i_1 
       (.I0(\seg[5]_i_2_n_0 ),
        .I1(\seg_reg[5]_0 ),
        .O(D),
        .S(out[2]));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module Digit_3
   (\seg_reg[5]_0 ,
    Q,
    clk_IBUF_BUFG);
  output \seg_reg[5]_0 ;
  input [0:0]Q;
  input clk_IBUF_BUFG;

  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \seg_reg[5]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(\seg_reg[5]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module Digit_4
   (\seg_reg[5]_0 ,
    Q,
    clk_IBUF_BUFG);
  output \seg_reg[5]_0 ;
  input [0:0]Q;
  input clk_IBUF_BUFG;

  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \seg_reg[5]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(\seg_reg[5]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module Digit_5
   (\seg_reg[5]_0 ,
    Q,
    clk_IBUF_BUFG);
  output \seg_reg[5]_0 ;
  input [0:0]Q;
  input clk_IBUF_BUFG;

  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \seg_reg[5]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(\seg_reg[5]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module Digit_6
   (\seg_reg[5]_0 ,
    Q,
    clk_IBUF_BUFG,
    \seg_reg[5]_1 ,
    out,
    \seg_reg[5]_2 ,
    \seg_reg[5]_3 );
  output \seg_reg[5]_0 ;
  input [0:0]Q;
  input clk_IBUF_BUFG;
  input \seg_reg[5]_1 ;
  input [1:0]out;
  input \seg_reg[5]_2 ;
  input \seg_reg[5]_3 ;

  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [1:0]out;
  wire \seg_reg[5]_0 ;
  wire \seg_reg[5]_1 ;
  wire \seg_reg[5]_2 ;
  wire \seg_reg[5]_3 ;
  wire \seg_reg_n_0_[5] ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[5]_i_3 
       (.I0(\seg_reg_n_0_[5] ),
        .I1(\seg_reg[5]_1 ),
        .I2(out[1]),
        .I3(\seg_reg[5]_2 ),
        .I4(out[0]),
        .I5(\seg_reg[5]_3 ),
        .O(\seg_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(\seg_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Plaintext_ROM,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2.1" *) 
module Plaintext_ROM
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Plaintext_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "Plaintext_ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Plaintext_ROM_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module PushButton_Left
   (SR,
    Q,
    clk_IBUF_BUFG,
    btnL_IBUF,
    tick_out_reg,
    btnCpuReset_IBUF);
  output [0:0]SR;
  output [7:0]Q;
  input clk_IBUF_BUFG;
  input btnL_IBUF;
  input tick_out_reg;
  input btnCpuReset_IBUF;

  wire [7:0]Q;
  wire [0:0]SR;
  wire \address[0]_i_1_n_0 ;
  wire \address[1]_i_1_n_0 ;
  wire \address[2]_i_1_n_0 ;
  wire \address[3]_i_1_n_0 ;
  wire \address_reg_n_0_[0] ;
  wire \address_reg_n_0_[1] ;
  wire \address_reg_n_0_[2] ;
  wire \address_reg_n_0_[3] ;
  wire btnCpuReset_IBUF;
  wire btnL_IBUF;
  wire btn_flag;
  wire [7:0]cipher;
  wire clk_IBUF_BUFG;
  wire [7:0]dataout_d;
  wire [7:0]dataout_q;
  wire \dataout_q[7]_i_1_n_0 ;
  wire encrypt_en;
  wire encrypt_n_1;
  wire encrypt_n_2;
  wire rom_en;
  wire rom_en_i_1_n_0;
  wire tick_out_reg;

  (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2.1" *) 
  Plaintext_ROM P_ROM
       (.addra({\address_reg_n_0_[3] ,\address_reg_n_0_[2] ,\address_reg_n_0_[1] ,\address_reg_n_0_[0] }),
        .clka(clk_IBUF_BUFG),
        .douta(dataout_d),
        .ena(rom_en));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \address[0]_i_1 
       (.I0(\address_reg_n_0_[0] ),
        .O(\address[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address[1]_i_1 
       (.I0(\address_reg_n_0_[0] ),
        .I1(\address_reg_n_0_[1] ),
        .O(\address[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \address[2]_i_1 
       (.I0(\address_reg_n_0_[0] ),
        .I1(\address_reg_n_0_[1] ),
        .I2(\address_reg_n_0_[2] ),
        .O(\address[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \address[3]_i_1 
       (.I0(\address_reg_n_0_[1] ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\address_reg_n_0_[2] ),
        .I3(\address_reg_n_0_[3] ),
        .O(\address[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .CLR(SR),
        .D(\address[0]_i_1_n_0 ),
        .Q(\address_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .CLR(SR),
        .D(\address[1]_i_1_n_0 ),
        .Q(\address_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .CLR(SR),
        .D(\address[2]_i_1_n_0 ),
        .Q(\address_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .CLR(SR),
        .D(\address[3]_i_1_n_0 ),
        .Q(\address_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    btn_flag_reg
       (.C(tick_out_reg),
        .CE(1'b1),
        .CLR(SR),
        .D(btnL_IBUF),
        .Q(btn_flag));
  FDRE #(
    .INIT(1'b0)) 
    \ciphertext_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(encrypt_n_2),
        .D(cipher[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciphertext_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(encrypt_n_2),
        .D(cipher[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciphertext_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(encrypt_n_2),
        .D(cipher[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciphertext_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(encrypt_n_2),
        .D(cipher[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciphertext_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(encrypt_n_2),
        .D(cipher[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciphertext_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(encrypt_n_2),
        .D(cipher[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciphertext_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(encrypt_n_2),
        .D(cipher[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciphertext_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(encrypt_n_2),
        .D(cipher[7]),
        .Q(Q[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \dataout_q[7]_i_1 
       (.I0(btn_flag),
        .I1(btnCpuReset_IBUF),
        .O(\dataout_q[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .D(dataout_d[0]),
        .Q(dataout_q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .D(dataout_d[1]),
        .Q(dataout_q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .D(dataout_d[2]),
        .Q(dataout_q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .D(dataout_d[3]),
        .Q(dataout_q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .D(dataout_d[4]),
        .Q(dataout_q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .D(dataout_d[5]),
        .Q(dataout_q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .D(dataout_d[6]),
        .Q(dataout_q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataout_q[7]_i_1_n_0 ),
        .D(dataout_d[7]),
        .Q(dataout_q[7]),
        .R(1'b0));
  encrpytion encrypt
       (.AR(SR),
        .E(encrypt_n_2),
        .Q(dataout_q),
        .btnCpuReset_IBUF(btnCpuReset_IBUF),
        .btn_flag(btn_flag),
        .\ciphertext_reg_reg[7] (cipher),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .encrypt_en(encrypt_en),
        .encrypt_en_reg(encrypt_n_1));
  FDCE #(
    .INIT(1'b0)) 
    encrypt_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SR),
        .D(encrypt_n_1),
        .Q(encrypt_en));
  LUT2 #(
    .INIT(4'hE)) 
    rom_en_i_1
       (.I0(btn_flag),
        .I1(rom_en),
        .O(rom_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rom_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SR),
        .D(rom_en_i_1_n_0),
        .Q(rom_en));
endmodule

(* SIMULATE = "0" *) 
(* NotValidForBitStream *)
module Top
   (clk,
    btnCpuReset,
    btnL,
    seg,
    dp,
    an);
  input clk;
  input btnCpuReset;
  input btnL;
  output [6:0]seg;
  output dp;
  output [7:0]an;

  wire CLKDIV2_n_0;
  wire \Digit0/seg00 ;
  wire \Digit1/seg00 ;
  wire \Digit2/seg00 ;
  wire \Digit3/seg00 ;
  wire \Digit4/seg00 ;
  wire \Digit5/seg00 ;
  wire \Digit6/seg00 ;
  wire \Digit7/seg00 ;
  wire [7:0]an;
  wire [7:0]an_OBUF;
  wire btnCpuReset;
  wire btnCpuReset_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire dp;
  wire dp_OBUF;
  wire [6:0]seg;
  wire seg0;
  wire [1:0]seg_OBUF;
  wire sysreset;

  clk_divider CLKDIV1
       (.D(seg0),
        .SR(sysreset),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  clk_divider__parameterized0 CLKDIV2
       (.SR(sysreset),
        .btn_flag_reg(CLKDIV2_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  sevensegment SSB
       (.D(seg0),
        .Q({\Digit7/seg00 ,\Digit6/seg00 ,\Digit5/seg00 ,\Digit4/seg00 ,\Digit3/seg00 ,\Digit2/seg00 ,\Digit1/seg00 ,\Digit0/seg00 }),
        .SR(sysreset),
        .an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dp({dp_OBUF,seg_OBUF[0],seg_OBUF[1]}));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(an_OBUF[4]),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(an_OBUF[5]),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(an_OBUF[6]),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(an_OBUF[7]),
        .O(an[7]));
  IBUF btnCpuReset_IBUF_inst
       (.I(btnCpuReset),
        .O(btnCpuReset_IBUF));
  IBUF btnL_IBUF_inst
       (.I(btnL),
        .O(btnL_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  PushButton_Left pushbtn_l
       (.Q({\Digit7/seg00 ,\Digit6/seg00 ,\Digit5/seg00 ,\Digit4/seg00 ,\Digit3/seg00 ,\Digit2/seg00 ,\Digit1/seg00 ,\Digit0/seg00 }),
        .SR(sysreset),
        .btnCpuReset_IBUF(btnCpuReset_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .tick_out_reg(CLKDIV2_n_0));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(1'b1),
        .O(seg[6]));
endmodule

module clk_divider
   (D,
    SR,
    clk_IBUF_BUFG);
  output [0:0]D;
  input [0:0]SR;
  input clk_IBUF_BUFG;

  wire [0:0]D;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [31:0]clk_div_counter;
  wire clk_div_counter0_carry__0_n_0;
  wire clk_div_counter0_carry__0_n_1;
  wire clk_div_counter0_carry__0_n_2;
  wire clk_div_counter0_carry__0_n_3;
  wire clk_div_counter0_carry__0_n_4;
  wire clk_div_counter0_carry__0_n_5;
  wire clk_div_counter0_carry__0_n_6;
  wire clk_div_counter0_carry__0_n_7;
  wire clk_div_counter0_carry__1_n_0;
  wire clk_div_counter0_carry__1_n_1;
  wire clk_div_counter0_carry__1_n_2;
  wire clk_div_counter0_carry__1_n_3;
  wire clk_div_counter0_carry__1_n_4;
  wire clk_div_counter0_carry__1_n_5;
  wire clk_div_counter0_carry__1_n_6;
  wire clk_div_counter0_carry__1_n_7;
  wire clk_div_counter0_carry__2_n_0;
  wire clk_div_counter0_carry__2_n_1;
  wire clk_div_counter0_carry__2_n_2;
  wire clk_div_counter0_carry__2_n_3;
  wire clk_div_counter0_carry__2_n_4;
  wire clk_div_counter0_carry__2_n_5;
  wire clk_div_counter0_carry__2_n_6;
  wire clk_div_counter0_carry__2_n_7;
  wire clk_div_counter0_carry__3_n_0;
  wire clk_div_counter0_carry__3_n_1;
  wire clk_div_counter0_carry__3_n_2;
  wire clk_div_counter0_carry__3_n_3;
  wire clk_div_counter0_carry__3_n_4;
  wire clk_div_counter0_carry__3_n_5;
  wire clk_div_counter0_carry__3_n_6;
  wire clk_div_counter0_carry__3_n_7;
  wire clk_div_counter0_carry__4_n_0;
  wire clk_div_counter0_carry__4_n_1;
  wire clk_div_counter0_carry__4_n_2;
  wire clk_div_counter0_carry__4_n_3;
  wire clk_div_counter0_carry__4_n_4;
  wire clk_div_counter0_carry__4_n_5;
  wire clk_div_counter0_carry__4_n_6;
  wire clk_div_counter0_carry__4_n_7;
  wire clk_div_counter0_carry__5_n_0;
  wire clk_div_counter0_carry__5_n_1;
  wire clk_div_counter0_carry__5_n_2;
  wire clk_div_counter0_carry__5_n_3;
  wire clk_div_counter0_carry__5_n_4;
  wire clk_div_counter0_carry__5_n_5;
  wire clk_div_counter0_carry__5_n_6;
  wire clk_div_counter0_carry__5_n_7;
  wire clk_div_counter0_carry__6_n_2;
  wire clk_div_counter0_carry__6_n_3;
  wire clk_div_counter0_carry__6_n_5;
  wire clk_div_counter0_carry__6_n_6;
  wire clk_div_counter0_carry__6_n_7;
  wire clk_div_counter0_carry_n_0;
  wire clk_div_counter0_carry_n_1;
  wire clk_div_counter0_carry_n_2;
  wire clk_div_counter0_carry_n_3;
  wire clk_div_counter0_carry_n_4;
  wire clk_div_counter0_carry_n_5;
  wire clk_div_counter0_carry_n_6;
  wire clk_div_counter0_carry_n_7;
  wire \clk_div_counter[31]_i_2__0_n_0 ;
  wire \clk_div_counter[31]_i_3__0_n_0 ;
  wire \clk_div_counter[31]_i_4__0_n_0 ;
  wire \clk_div_counter[31]_i_5__0_n_0 ;
  wire \clk_div_counter[31]_i_6__0_n_0 ;
  wire \clk_div_counter[31]_i_7__0_n_0 ;
  wire \clk_div_counter[31]_i_8__0_n_0 ;
  wire \clk_div_counter[31]_i_9__0_n_0 ;
  wire [31:0]clk_div_counter_0;
  wire tick_out;
  wire [3:2]NLW_clk_div_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_clk_div_counter0_carry__6_O_UNCONNECTED;

  CARRY4 clk_div_counter0_carry
       (.CI(1'b0),
        .CO({clk_div_counter0_carry_n_0,clk_div_counter0_carry_n_1,clk_div_counter0_carry_n_2,clk_div_counter0_carry_n_3}),
        .CYINIT(clk_div_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry_n_4,clk_div_counter0_carry_n_5,clk_div_counter0_carry_n_6,clk_div_counter0_carry_n_7}),
        .S(clk_div_counter[4:1]));
  CARRY4 clk_div_counter0_carry__0
       (.CI(clk_div_counter0_carry_n_0),
        .CO({clk_div_counter0_carry__0_n_0,clk_div_counter0_carry__0_n_1,clk_div_counter0_carry__0_n_2,clk_div_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__0_n_4,clk_div_counter0_carry__0_n_5,clk_div_counter0_carry__0_n_6,clk_div_counter0_carry__0_n_7}),
        .S(clk_div_counter[8:5]));
  CARRY4 clk_div_counter0_carry__1
       (.CI(clk_div_counter0_carry__0_n_0),
        .CO({clk_div_counter0_carry__1_n_0,clk_div_counter0_carry__1_n_1,clk_div_counter0_carry__1_n_2,clk_div_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__1_n_4,clk_div_counter0_carry__1_n_5,clk_div_counter0_carry__1_n_6,clk_div_counter0_carry__1_n_7}),
        .S(clk_div_counter[12:9]));
  CARRY4 clk_div_counter0_carry__2
       (.CI(clk_div_counter0_carry__1_n_0),
        .CO({clk_div_counter0_carry__2_n_0,clk_div_counter0_carry__2_n_1,clk_div_counter0_carry__2_n_2,clk_div_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__2_n_4,clk_div_counter0_carry__2_n_5,clk_div_counter0_carry__2_n_6,clk_div_counter0_carry__2_n_7}),
        .S(clk_div_counter[16:13]));
  CARRY4 clk_div_counter0_carry__3
       (.CI(clk_div_counter0_carry__2_n_0),
        .CO({clk_div_counter0_carry__3_n_0,clk_div_counter0_carry__3_n_1,clk_div_counter0_carry__3_n_2,clk_div_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__3_n_4,clk_div_counter0_carry__3_n_5,clk_div_counter0_carry__3_n_6,clk_div_counter0_carry__3_n_7}),
        .S(clk_div_counter[20:17]));
  CARRY4 clk_div_counter0_carry__4
       (.CI(clk_div_counter0_carry__3_n_0),
        .CO({clk_div_counter0_carry__4_n_0,clk_div_counter0_carry__4_n_1,clk_div_counter0_carry__4_n_2,clk_div_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__4_n_4,clk_div_counter0_carry__4_n_5,clk_div_counter0_carry__4_n_6,clk_div_counter0_carry__4_n_7}),
        .S(clk_div_counter[24:21]));
  CARRY4 clk_div_counter0_carry__5
       (.CI(clk_div_counter0_carry__4_n_0),
        .CO({clk_div_counter0_carry__5_n_0,clk_div_counter0_carry__5_n_1,clk_div_counter0_carry__5_n_2,clk_div_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__5_n_4,clk_div_counter0_carry__5_n_5,clk_div_counter0_carry__5_n_6,clk_div_counter0_carry__5_n_7}),
        .S(clk_div_counter[28:25]));
  CARRY4 clk_div_counter0_carry__6
       (.CI(clk_div_counter0_carry__5_n_0),
        .CO({NLW_clk_div_counter0_carry__6_CO_UNCONNECTED[3:2],clk_div_counter0_carry__6_n_2,clk_div_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_div_counter0_carry__6_O_UNCONNECTED[3],clk_div_counter0_carry__6_n_5,clk_div_counter0_carry__6_n_6,clk_div_counter0_carry__6_n_7}),
        .S({1'b0,clk_div_counter[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_counter[0]_i_1__0 
       (.I0(clk_div_counter[0]),
        .O(clk_div_counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[10]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__1_n_6),
        .O(clk_div_counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[11]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__1_n_5),
        .O(clk_div_counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[12]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__1_n_4),
        .O(clk_div_counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[13]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__2_n_7),
        .O(clk_div_counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[14]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__2_n_6),
        .O(clk_div_counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[15]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__2_n_5),
        .O(clk_div_counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[16]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__2_n_4),
        .O(clk_div_counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[17]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__3_n_7),
        .O(clk_div_counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[18]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__3_n_6),
        .O(clk_div_counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[19]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__3_n_5),
        .O(clk_div_counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[1]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry_n_7),
        .O(clk_div_counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[20]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__3_n_4),
        .O(clk_div_counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[21]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__4_n_7),
        .O(clk_div_counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[22]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__4_n_6),
        .O(clk_div_counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[23]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__4_n_5),
        .O(clk_div_counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[24]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__4_n_4),
        .O(clk_div_counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[25]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__5_n_7),
        .O(clk_div_counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[26]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__5_n_6),
        .O(clk_div_counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[27]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__5_n_5),
        .O(clk_div_counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[28]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__5_n_4),
        .O(clk_div_counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[29]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__6_n_7),
        .O(clk_div_counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[2]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry_n_6),
        .O(clk_div_counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[30]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__6_n_6),
        .O(clk_div_counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[31]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__6_n_5),
        .O(clk_div_counter_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_div_counter[31]_i_2__0 
       (.I0(clk_div_counter[10]),
        .I1(clk_div_counter[11]),
        .I2(clk_div_counter[8]),
        .I3(clk_div_counter[9]),
        .I4(\clk_div_counter[31]_i_6__0_n_0 ),
        .O(\clk_div_counter[31]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \clk_div_counter[31]_i_3__0 
       (.I0(clk_div_counter[2]),
        .I1(clk_div_counter[3]),
        .I2(clk_div_counter[0]),
        .I3(clk_div_counter[1]),
        .I4(\clk_div_counter[31]_i_7__0_n_0 ),
        .O(\clk_div_counter[31]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_div_counter[31]_i_4__0 
       (.I0(clk_div_counter[27]),
        .I1(clk_div_counter[26]),
        .I2(clk_div_counter[25]),
        .I3(clk_div_counter[24]),
        .I4(\clk_div_counter[31]_i_8__0_n_0 ),
        .O(\clk_div_counter[31]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_div_counter[31]_i_5__0 
       (.I0(clk_div_counter[19]),
        .I1(clk_div_counter[18]),
        .I2(clk_div_counter[17]),
        .I3(clk_div_counter[16]),
        .I4(\clk_div_counter[31]_i_9__0_n_0 ),
        .O(\clk_div_counter[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \clk_div_counter[31]_i_6__0 
       (.I0(clk_div_counter[13]),
        .I1(clk_div_counter[12]),
        .I2(clk_div_counter[15]),
        .I3(clk_div_counter[14]),
        .O(\clk_div_counter[31]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_div_counter[31]_i_7__0 
       (.I0(clk_div_counter[5]),
        .I1(clk_div_counter[4]),
        .I2(clk_div_counter[7]),
        .I3(clk_div_counter[6]),
        .O(\clk_div_counter[31]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_div_counter[31]_i_8__0 
       (.I0(clk_div_counter[29]),
        .I1(clk_div_counter[28]),
        .I2(clk_div_counter[31]),
        .I3(clk_div_counter[30]),
        .O(\clk_div_counter[31]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_div_counter[31]_i_9__0 
       (.I0(clk_div_counter[21]),
        .I1(clk_div_counter[20]),
        .I2(clk_div_counter[23]),
        .I3(clk_div_counter[22]),
        .O(\clk_div_counter[31]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[3]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry_n_5),
        .O(clk_div_counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[4]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry_n_4),
        .O(clk_div_counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[5]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__0_n_7),
        .O(clk_div_counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[6]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__0_n_6),
        .O(clk_div_counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[7]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__0_n_5),
        .O(clk_div_counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[8]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__0_n_4),
        .O(clk_div_counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[9]_i_1__0 
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .I4(clk_div_counter0_carry__1_n_7),
        .O(clk_div_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[0]),
        .Q(clk_div_counter[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[10]),
        .Q(clk_div_counter[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[11]),
        .Q(clk_div_counter[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[12]),
        .Q(clk_div_counter[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[13]),
        .Q(clk_div_counter[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[14]),
        .Q(clk_div_counter[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[15]),
        .Q(clk_div_counter[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[16]),
        .Q(clk_div_counter[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[17]),
        .Q(clk_div_counter[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[18]),
        .Q(clk_div_counter[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[19]),
        .Q(clk_div_counter[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[1]),
        .Q(clk_div_counter[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[20]),
        .Q(clk_div_counter[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[21]),
        .Q(clk_div_counter[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[22]),
        .Q(clk_div_counter[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[23]),
        .Q(clk_div_counter[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[24]),
        .Q(clk_div_counter[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[25]),
        .Q(clk_div_counter[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[26]),
        .Q(clk_div_counter[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[27]),
        .Q(clk_div_counter[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[28]),
        .Q(clk_div_counter[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[29]),
        .Q(clk_div_counter[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[2]),
        .Q(clk_div_counter[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[30]),
        .Q(clk_div_counter[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[31]),
        .Q(clk_div_counter[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[3]),
        .Q(clk_div_counter[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[4]),
        .Q(clk_div_counter[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[5]),
        .Q(clk_div_counter[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[6]),
        .Q(clk_div_counter[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[7]),
        .Q(clk_div_counter[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[8]),
        .Q(clk_div_counter[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter_0[9]),
        .Q(clk_div_counter[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tick_out_inv_i_1
       (.I0(\clk_div_counter[31]_i_2__0_n_0 ),
        .I1(\clk_div_counter[31]_i_3__0_n_0 ),
        .I2(\clk_div_counter[31]_i_4__0_n_0 ),
        .I3(\clk_div_counter[31]_i_5__0_n_0 ),
        .O(tick_out));
  FDSE #(
    .INIT(1'b1)) 
    tick_out_reg_inv
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tick_out),
        .Q(D),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module clk_divider__parameterized0
   (btn_flag_reg,
    SR,
    clk_IBUF_BUFG);
  output btn_flag_reg;
  input [0:0]SR;
  input clk_IBUF_BUFG;

  wire [0:0]SR;
  wire btn_flag_reg;
  wire clk_IBUF_BUFG;
  wire [31:0]clk_div_counter;
  wire clk_div_counter0_carry__0_n_0;
  wire clk_div_counter0_carry__0_n_1;
  wire clk_div_counter0_carry__0_n_2;
  wire clk_div_counter0_carry__0_n_3;
  wire clk_div_counter0_carry__0_n_4;
  wire clk_div_counter0_carry__0_n_5;
  wire clk_div_counter0_carry__0_n_6;
  wire clk_div_counter0_carry__0_n_7;
  wire clk_div_counter0_carry__1_n_0;
  wire clk_div_counter0_carry__1_n_1;
  wire clk_div_counter0_carry__1_n_2;
  wire clk_div_counter0_carry__1_n_3;
  wire clk_div_counter0_carry__1_n_4;
  wire clk_div_counter0_carry__1_n_5;
  wire clk_div_counter0_carry__1_n_6;
  wire clk_div_counter0_carry__1_n_7;
  wire clk_div_counter0_carry__2_n_0;
  wire clk_div_counter0_carry__2_n_1;
  wire clk_div_counter0_carry__2_n_2;
  wire clk_div_counter0_carry__2_n_3;
  wire clk_div_counter0_carry__2_n_4;
  wire clk_div_counter0_carry__2_n_5;
  wire clk_div_counter0_carry__2_n_6;
  wire clk_div_counter0_carry__2_n_7;
  wire clk_div_counter0_carry__3_n_0;
  wire clk_div_counter0_carry__3_n_1;
  wire clk_div_counter0_carry__3_n_2;
  wire clk_div_counter0_carry__3_n_3;
  wire clk_div_counter0_carry__3_n_4;
  wire clk_div_counter0_carry__3_n_5;
  wire clk_div_counter0_carry__3_n_6;
  wire clk_div_counter0_carry__3_n_7;
  wire clk_div_counter0_carry__4_n_0;
  wire clk_div_counter0_carry__4_n_1;
  wire clk_div_counter0_carry__4_n_2;
  wire clk_div_counter0_carry__4_n_3;
  wire clk_div_counter0_carry__4_n_4;
  wire clk_div_counter0_carry__4_n_5;
  wire clk_div_counter0_carry__4_n_6;
  wire clk_div_counter0_carry__4_n_7;
  wire clk_div_counter0_carry__5_n_0;
  wire clk_div_counter0_carry__5_n_1;
  wire clk_div_counter0_carry__5_n_2;
  wire clk_div_counter0_carry__5_n_3;
  wire clk_div_counter0_carry__5_n_4;
  wire clk_div_counter0_carry__5_n_5;
  wire clk_div_counter0_carry__5_n_6;
  wire clk_div_counter0_carry__5_n_7;
  wire clk_div_counter0_carry__6_n_2;
  wire clk_div_counter0_carry__6_n_3;
  wire clk_div_counter0_carry__6_n_5;
  wire clk_div_counter0_carry__6_n_6;
  wire clk_div_counter0_carry__6_n_7;
  wire clk_div_counter0_carry_n_0;
  wire clk_div_counter0_carry_n_1;
  wire clk_div_counter0_carry_n_2;
  wire clk_div_counter0_carry_n_3;
  wire clk_div_counter0_carry_n_4;
  wire clk_div_counter0_carry_n_5;
  wire clk_div_counter0_carry_n_6;
  wire clk_div_counter0_carry_n_7;
  wire \clk_div_counter[31]_i_2_n_0 ;
  wire \clk_div_counter[31]_i_3_n_0 ;
  wire \clk_div_counter[31]_i_4_n_0 ;
  wire \clk_div_counter[31]_i_5_n_0 ;
  wire \clk_div_counter[31]_i_6_n_0 ;
  wire \clk_div_counter[31]_i_7_n_0 ;
  wire \clk_div_counter[31]_i_8_n_0 ;
  wire \clk_div_counter[31]_i_9_n_0 ;
  wire \clk_div_counter_reg_n_0_[0] ;
  wire \clk_div_counter_reg_n_0_[10] ;
  wire \clk_div_counter_reg_n_0_[11] ;
  wire \clk_div_counter_reg_n_0_[12] ;
  wire \clk_div_counter_reg_n_0_[13] ;
  wire \clk_div_counter_reg_n_0_[14] ;
  wire \clk_div_counter_reg_n_0_[15] ;
  wire \clk_div_counter_reg_n_0_[16] ;
  wire \clk_div_counter_reg_n_0_[17] ;
  wire \clk_div_counter_reg_n_0_[18] ;
  wire \clk_div_counter_reg_n_0_[19] ;
  wire \clk_div_counter_reg_n_0_[1] ;
  wire \clk_div_counter_reg_n_0_[20] ;
  wire \clk_div_counter_reg_n_0_[21] ;
  wire \clk_div_counter_reg_n_0_[22] ;
  wire \clk_div_counter_reg_n_0_[23] ;
  wire \clk_div_counter_reg_n_0_[24] ;
  wire \clk_div_counter_reg_n_0_[25] ;
  wire \clk_div_counter_reg_n_0_[26] ;
  wire \clk_div_counter_reg_n_0_[27] ;
  wire \clk_div_counter_reg_n_0_[28] ;
  wire \clk_div_counter_reg_n_0_[29] ;
  wire \clk_div_counter_reg_n_0_[2] ;
  wire \clk_div_counter_reg_n_0_[30] ;
  wire \clk_div_counter_reg_n_0_[31] ;
  wire \clk_div_counter_reg_n_0_[3] ;
  wire \clk_div_counter_reg_n_0_[4] ;
  wire \clk_div_counter_reg_n_0_[5] ;
  wire \clk_div_counter_reg_n_0_[6] ;
  wire \clk_div_counter_reg_n_0_[7] ;
  wire \clk_div_counter_reg_n_0_[8] ;
  wire \clk_div_counter_reg_n_0_[9] ;
  wire tick_out;
  wire [3:2]NLW_clk_div_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_clk_div_counter0_carry__6_O_UNCONNECTED;

  CARRY4 clk_div_counter0_carry
       (.CI(1'b0),
        .CO({clk_div_counter0_carry_n_0,clk_div_counter0_carry_n_1,clk_div_counter0_carry_n_2,clk_div_counter0_carry_n_3}),
        .CYINIT(\clk_div_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry_n_4,clk_div_counter0_carry_n_5,clk_div_counter0_carry_n_6,clk_div_counter0_carry_n_7}),
        .S({\clk_div_counter_reg_n_0_[4] ,\clk_div_counter_reg_n_0_[3] ,\clk_div_counter_reg_n_0_[2] ,\clk_div_counter_reg_n_0_[1] }));
  CARRY4 clk_div_counter0_carry__0
       (.CI(clk_div_counter0_carry_n_0),
        .CO({clk_div_counter0_carry__0_n_0,clk_div_counter0_carry__0_n_1,clk_div_counter0_carry__0_n_2,clk_div_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__0_n_4,clk_div_counter0_carry__0_n_5,clk_div_counter0_carry__0_n_6,clk_div_counter0_carry__0_n_7}),
        .S({\clk_div_counter_reg_n_0_[8] ,\clk_div_counter_reg_n_0_[7] ,\clk_div_counter_reg_n_0_[6] ,\clk_div_counter_reg_n_0_[5] }));
  CARRY4 clk_div_counter0_carry__1
       (.CI(clk_div_counter0_carry__0_n_0),
        .CO({clk_div_counter0_carry__1_n_0,clk_div_counter0_carry__1_n_1,clk_div_counter0_carry__1_n_2,clk_div_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__1_n_4,clk_div_counter0_carry__1_n_5,clk_div_counter0_carry__1_n_6,clk_div_counter0_carry__1_n_7}),
        .S({\clk_div_counter_reg_n_0_[12] ,\clk_div_counter_reg_n_0_[11] ,\clk_div_counter_reg_n_0_[10] ,\clk_div_counter_reg_n_0_[9] }));
  CARRY4 clk_div_counter0_carry__2
       (.CI(clk_div_counter0_carry__1_n_0),
        .CO({clk_div_counter0_carry__2_n_0,clk_div_counter0_carry__2_n_1,clk_div_counter0_carry__2_n_2,clk_div_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__2_n_4,clk_div_counter0_carry__2_n_5,clk_div_counter0_carry__2_n_6,clk_div_counter0_carry__2_n_7}),
        .S({\clk_div_counter_reg_n_0_[16] ,\clk_div_counter_reg_n_0_[15] ,\clk_div_counter_reg_n_0_[14] ,\clk_div_counter_reg_n_0_[13] }));
  CARRY4 clk_div_counter0_carry__3
       (.CI(clk_div_counter0_carry__2_n_0),
        .CO({clk_div_counter0_carry__3_n_0,clk_div_counter0_carry__3_n_1,clk_div_counter0_carry__3_n_2,clk_div_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__3_n_4,clk_div_counter0_carry__3_n_5,clk_div_counter0_carry__3_n_6,clk_div_counter0_carry__3_n_7}),
        .S({\clk_div_counter_reg_n_0_[20] ,\clk_div_counter_reg_n_0_[19] ,\clk_div_counter_reg_n_0_[18] ,\clk_div_counter_reg_n_0_[17] }));
  CARRY4 clk_div_counter0_carry__4
       (.CI(clk_div_counter0_carry__3_n_0),
        .CO({clk_div_counter0_carry__4_n_0,clk_div_counter0_carry__4_n_1,clk_div_counter0_carry__4_n_2,clk_div_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__4_n_4,clk_div_counter0_carry__4_n_5,clk_div_counter0_carry__4_n_6,clk_div_counter0_carry__4_n_7}),
        .S({\clk_div_counter_reg_n_0_[24] ,\clk_div_counter_reg_n_0_[23] ,\clk_div_counter_reg_n_0_[22] ,\clk_div_counter_reg_n_0_[21] }));
  CARRY4 clk_div_counter0_carry__5
       (.CI(clk_div_counter0_carry__4_n_0),
        .CO({clk_div_counter0_carry__5_n_0,clk_div_counter0_carry__5_n_1,clk_div_counter0_carry__5_n_2,clk_div_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_div_counter0_carry__5_n_4,clk_div_counter0_carry__5_n_5,clk_div_counter0_carry__5_n_6,clk_div_counter0_carry__5_n_7}),
        .S({\clk_div_counter_reg_n_0_[28] ,\clk_div_counter_reg_n_0_[27] ,\clk_div_counter_reg_n_0_[26] ,\clk_div_counter_reg_n_0_[25] }));
  CARRY4 clk_div_counter0_carry__6
       (.CI(clk_div_counter0_carry__5_n_0),
        .CO({NLW_clk_div_counter0_carry__6_CO_UNCONNECTED[3:2],clk_div_counter0_carry__6_n_2,clk_div_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_div_counter0_carry__6_O_UNCONNECTED[3],clk_div_counter0_carry__6_n_5,clk_div_counter0_carry__6_n_6,clk_div_counter0_carry__6_n_7}),
        .S({1'b0,\clk_div_counter_reg_n_0_[31] ,\clk_div_counter_reg_n_0_[30] ,\clk_div_counter_reg_n_0_[29] }));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_counter[0]_i_1 
       (.I0(\clk_div_counter_reg_n_0_[0] ),
        .O(clk_div_counter[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[10]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__1_n_6),
        .O(clk_div_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[11]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__1_n_5),
        .O(clk_div_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[12]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__1_n_4),
        .O(clk_div_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[13]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__2_n_7),
        .O(clk_div_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[14]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__2_n_6),
        .O(clk_div_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[15]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__2_n_5),
        .O(clk_div_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[16]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__2_n_4),
        .O(clk_div_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[17]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__3_n_7),
        .O(clk_div_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[18]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__3_n_6),
        .O(clk_div_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[19]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__3_n_5),
        .O(clk_div_counter[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[1]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry_n_7),
        .O(clk_div_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[20]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__3_n_4),
        .O(clk_div_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[21]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__4_n_7),
        .O(clk_div_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[22]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__4_n_6),
        .O(clk_div_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[23]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__4_n_5),
        .O(clk_div_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[24]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__4_n_4),
        .O(clk_div_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[25]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__5_n_7),
        .O(clk_div_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[26]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__5_n_6),
        .O(clk_div_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[27]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__5_n_5),
        .O(clk_div_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[28]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__5_n_4),
        .O(clk_div_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[29]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__6_n_7),
        .O(clk_div_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[2]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry_n_6),
        .O(clk_div_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[30]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__6_n_6),
        .O(clk_div_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[31]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__6_n_5),
        .O(clk_div_counter[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_div_counter[31]_i_2 
       (.I0(\clk_div_counter_reg_n_0_[10] ),
        .I1(\clk_div_counter_reg_n_0_[11] ),
        .I2(\clk_div_counter_reg_n_0_[8] ),
        .I3(\clk_div_counter_reg_n_0_[9] ),
        .I4(\clk_div_counter[31]_i_6_n_0 ),
        .O(\clk_div_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \clk_div_counter[31]_i_3 
       (.I0(\clk_div_counter_reg_n_0_[2] ),
        .I1(\clk_div_counter_reg_n_0_[3] ),
        .I2(\clk_div_counter_reg_n_0_[0] ),
        .I3(\clk_div_counter_reg_n_0_[1] ),
        .I4(\clk_div_counter[31]_i_7_n_0 ),
        .O(\clk_div_counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \clk_div_counter[31]_i_4 
       (.I0(\clk_div_counter_reg_n_0_[26] ),
        .I1(\clk_div_counter_reg_n_0_[27] ),
        .I2(\clk_div_counter_reg_n_0_[25] ),
        .I3(\clk_div_counter_reg_n_0_[24] ),
        .I4(\clk_div_counter[31]_i_8_n_0 ),
        .O(\clk_div_counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \clk_div_counter[31]_i_5 
       (.I0(\clk_div_counter_reg_n_0_[18] ),
        .I1(\clk_div_counter_reg_n_0_[19] ),
        .I2(\clk_div_counter_reg_n_0_[17] ),
        .I3(\clk_div_counter_reg_n_0_[16] ),
        .I4(\clk_div_counter[31]_i_9_n_0 ),
        .O(\clk_div_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \clk_div_counter[31]_i_6 
       (.I0(\clk_div_counter_reg_n_0_[13] ),
        .I1(\clk_div_counter_reg_n_0_[12] ),
        .I2(\clk_div_counter_reg_n_0_[14] ),
        .I3(\clk_div_counter_reg_n_0_[15] ),
        .O(\clk_div_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \clk_div_counter[31]_i_7 
       (.I0(\clk_div_counter_reg_n_0_[5] ),
        .I1(\clk_div_counter_reg_n_0_[4] ),
        .I2(\clk_div_counter_reg_n_0_[7] ),
        .I3(\clk_div_counter_reg_n_0_[6] ),
        .O(\clk_div_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_div_counter[31]_i_8 
       (.I0(\clk_div_counter_reg_n_0_[29] ),
        .I1(\clk_div_counter_reg_n_0_[28] ),
        .I2(\clk_div_counter_reg_n_0_[31] ),
        .I3(\clk_div_counter_reg_n_0_[30] ),
        .O(\clk_div_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \clk_div_counter[31]_i_9 
       (.I0(\clk_div_counter_reg_n_0_[21] ),
        .I1(\clk_div_counter_reg_n_0_[20] ),
        .I2(\clk_div_counter_reg_n_0_[22] ),
        .I3(\clk_div_counter_reg_n_0_[23] ),
        .O(\clk_div_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[3]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry_n_5),
        .O(clk_div_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[4]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry_n_4),
        .O(clk_div_counter[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[5]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__0_n_7),
        .O(clk_div_counter[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[6]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__0_n_6),
        .O(clk_div_counter[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[7]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__0_n_5),
        .O(clk_div_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[8]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__0_n_4),
        .O(clk_div_counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_div_counter[9]_i_1 
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .I4(clk_div_counter0_carry__1_n_7),
        .O(clk_div_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[0]),
        .Q(\clk_div_counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[10]),
        .Q(\clk_div_counter_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[11]),
        .Q(\clk_div_counter_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[12]),
        .Q(\clk_div_counter_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[13]),
        .Q(\clk_div_counter_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[14]),
        .Q(\clk_div_counter_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[15]),
        .Q(\clk_div_counter_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[16]),
        .Q(\clk_div_counter_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[17]),
        .Q(\clk_div_counter_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[18]),
        .Q(\clk_div_counter_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[19]),
        .Q(\clk_div_counter_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[1]),
        .Q(\clk_div_counter_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[20]),
        .Q(\clk_div_counter_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[21]),
        .Q(\clk_div_counter_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[22]),
        .Q(\clk_div_counter_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[23]),
        .Q(\clk_div_counter_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[24]),
        .Q(\clk_div_counter_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[25]),
        .Q(\clk_div_counter_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[26]),
        .Q(\clk_div_counter_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[27]),
        .Q(\clk_div_counter_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[28]),
        .Q(\clk_div_counter_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[29]),
        .Q(\clk_div_counter_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[2]),
        .Q(\clk_div_counter_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[30]),
        .Q(\clk_div_counter_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[31]),
        .Q(\clk_div_counter_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[3]),
        .Q(\clk_div_counter_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[4]),
        .Q(\clk_div_counter_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[5]),
        .Q(\clk_div_counter_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[6]),
        .Q(\clk_div_counter_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[7]),
        .Q(\clk_div_counter_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[8]),
        .Q(\clk_div_counter_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_div_counter[9]),
        .Q(\clk_div_counter_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    tick_out_i_1
       (.I0(\clk_div_counter[31]_i_2_n_0 ),
        .I1(\clk_div_counter[31]_i_3_n_0 ),
        .I2(\clk_div_counter[31]_i_4_n_0 ),
        .I3(\clk_div_counter[31]_i_5_n_0 ),
        .O(tick_out));
  FDRE #(
    .INIT(1'b0)) 
    tick_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tick_out),
        .Q(btn_flag_reg),
        .R(SR));
endmodule

module encrpytion
   (AR,
    encrypt_en_reg,
    E,
    \ciphertext_reg_reg[7] ,
    clk_IBUF_BUFG,
    btn_flag,
    encrypt_en,
    btnCpuReset_IBUF,
    Q);
  output [0:0]AR;
  output encrypt_en_reg;
  output [0:0]E;
  output [7:0]\ciphertext_reg_reg[7] ;
  input clk_IBUF_BUFG;
  input btn_flag;
  input encrypt_en;
  input btnCpuReset_IBUF;
  input [7:0]Q;

  wire [0:0]AR;
  wire [0:0]E;
  wire [7:0]Q;
  wire [15:3]a10;
  wire a10_carry__0_i_1_n_0;
  wire a10_carry__0_i_2_n_0;
  wire a10_carry__0_i_3_n_0;
  wire a10_carry__0_i_4_n_0;
  wire a10_carry__0_n_0;
  wire a10_carry__0_n_1;
  wire a10_carry__0_n_2;
  wire a10_carry__0_n_3;
  wire a10_carry__1_i_1_n_0;
  wire a10_carry__1_i_2_n_0;
  wire a10_carry__1_i_3_n_0;
  wire a10_carry__1_i_4_n_0;
  wire a10_carry__1_n_0;
  wire a10_carry__1_n_1;
  wire a10_carry__1_n_2;
  wire a10_carry__1_n_3;
  wire a10_carry__2_i_1_n_0;
  wire a10_carry__2_i_2_n_0;
  wire a10_carry__2_n_3;
  wire a10_carry_i_1_n_0;
  wire a10_carry_i_2_n_0;
  wire a10_carry_i_3_n_0;
  wire a10_carry_i_4_n_0;
  wire a10_carry_n_0;
  wire a10_carry_n_1;
  wire a10_carry_n_2;
  wire a10_carry_n_3;
  wire a11;
  wire a11_carry__0_i_1_n_0;
  wire a11_carry__0_i_2_n_0;
  wire a11_carry__0_i_3_n_0;
  wire a11_carry__0_i_4_n_0;
  wire a11_carry__0_i_5_n_0;
  wire a11_carry__0_i_6_n_0;
  wire a11_carry__0_i_7_n_0;
  wire a11_carry__0_i_8_n_0;
  wire a11_carry__0_n_1;
  wire a11_carry__0_n_2;
  wire a11_carry__0_n_3;
  wire a11_carry_i_1_n_0;
  wire a11_carry_i_2_n_0;
  wire a11_carry_i_3_n_0;
  wire a11_carry_i_4_n_0;
  wire a11_carry_i_5_n_0;
  wire a11_carry_i_6_n_0;
  wire a11_carry_i_7_n_0;
  wire a11_carry_n_0;
  wire a11_carry_n_1;
  wire a11_carry_n_2;
  wire a11_carry_n_3;
  wire [15:1]a12;
  wire \a1[0]_i_2_n_0 ;
  wire \a1[10]_i_2_n_0 ;
  wire \a1[11]_i_2_n_0 ;
  wire \a1[12]_i_2_n_0 ;
  wire \a1[13]_i_2_n_0 ;
  wire \a1[14]_i_2_n_0 ;
  wire \a1[15]_i_1_n_0 ;
  wire \a1[15]_i_3_n_0 ;
  wire \a1[15]_i_4_n_0 ;
  wire \a1[15]_i_5_n_0 ;
  wire \a1[1]_i_2_n_0 ;
  wire \a1[2]_i_2_n_0 ;
  wire \a1[2]_i_3_n_0 ;
  wire \a1[2]_i_4_n_0 ;
  wire \a1[3]_i_2_n_0 ;
  wire \a1[3]_i_3_n_0 ;
  wire \a1[4]_i_2_n_0 ;
  wire \a1[4]_i_3_n_0 ;
  wire \a1[5]_i_2_n_0 ;
  wire \a1[5]_i_3_n_0 ;
  wire \a1[6]_i_2_n_0 ;
  wire \a1[6]_i_3_n_0 ;
  wire \a1[7]_i_2_n_0 ;
  wire \a1[7]_i_3_n_0 ;
  wire \a1[7]_i_4_n_0 ;
  wire \a1[7]_i_5_n_0 ;
  wire \a1[8]_i_2_n_0 ;
  wire \a1[9]_i_2_n_0 ;
  wire \a1_reg_n_0_[15] ;
  wire [0:0]b;
  wire \b[0]_i_1_n_0 ;
  wire \b[10]_i_1_n_0 ;
  wire \b[11]_i_1_n_0 ;
  wire \b[12]_i_1_n_0 ;
  wire \b[13]_i_1_n_0 ;
  wire \b[14]_i_1_n_0 ;
  wire \b[15]_i_1_n_0 ;
  wire \b[1]_i_1_n_0 ;
  wire \b[2]_i_1_n_0 ;
  wire \b[3]_i_1_n_0 ;
  wire \b[4]_i_1_n_0 ;
  wire \b[5]_i_1_n_0 ;
  wire \b[6]_i_1_n_0 ;
  wire \b[7]_i_1_n_0 ;
  wire \b[8]_i_1_n_0 ;
  wire \b[9]_i_1_n_0 ;
  wire \b_reg_n_0_[10] ;
  wire \b_reg_n_0_[11] ;
  wire \b_reg_n_0_[12] ;
  wire \b_reg_n_0_[13] ;
  wire \b_reg_n_0_[14] ;
  wire \b_reg_n_0_[15] ;
  wire \b_reg_n_0_[1] ;
  wire \b_reg_n_0_[2] ;
  wire \b_reg_n_0_[3] ;
  wire \b_reg_n_0_[4] ;
  wire \b_reg_n_0_[5] ;
  wire \b_reg_n_0_[6] ;
  wire \b_reg_n_0_[7] ;
  wire \b_reg_n_0_[8] ;
  wire \b_reg_n_0_[9] ;
  wire btnCpuReset_IBUF;
  wire btn_flag;
  wire [15:0]c;
  wire [15:0]c0;
  wire c1;
  wire c1_carry__0_i_1_n_0;
  wire c1_carry__0_i_2_n_0;
  wire c1_carry__0_i_3_n_0;
  wire c1_carry__0_i_4_n_0;
  wire c1_carry__0_i_5_n_0;
  wire c1_carry__0_i_6_n_0;
  wire c1_carry__0_i_7_n_0;
  wire c1_carry__0_i_8_n_0;
  wire c1_carry__0_n_1;
  wire c1_carry__0_n_2;
  wire c1_carry__0_n_3;
  wire c1_carry_i_1_n_0;
  wire c1_carry_i_2_n_0;
  wire c1_carry_i_3_n_0;
  wire c1_carry_i_4_n_0;
  wire c1_carry_i_5_n_0;
  wire c1_carry_i_6_n_0;
  wire c1_carry_i_7_n_0;
  wire c1_carry_i_8_n_0;
  wire c1_carry_n_0;
  wire c1_carry_n_1;
  wire c1_carry_n_2;
  wire c1_carry_n_3;
  wire [15:0]c2;
  wire c2_carry__0_i_1_n_0;
  wire c2_carry__0_i_2_n_0;
  wire c2_carry__0_i_3_n_0;
  wire c2_carry__0_i_4_n_0;
  wire c2_carry__0_n_0;
  wire c2_carry__0_n_1;
  wire c2_carry__0_n_2;
  wire c2_carry__0_n_3;
  wire c2_carry__1_i_1_n_0;
  wire c2_carry__1_i_2_n_0;
  wire c2_carry__1_i_3_n_0;
  wire c2_carry__1_i_4_n_0;
  wire c2_carry__1_n_0;
  wire c2_carry__1_n_1;
  wire c2_carry__1_n_2;
  wire c2_carry__1_n_3;
  wire c2_carry__2_i_1_n_0;
  wire c2_carry__2_i_2_n_0;
  wire c2_carry__2_i_3_n_0;
  wire c2_carry__2_i_4_n_0;
  wire c2_carry__2_n_1;
  wire c2_carry__2_n_2;
  wire c2_carry__2_n_3;
  wire c2_carry_i_1_n_0;
  wire c2_carry_i_2_n_0;
  wire c2_carry_i_3_n_0;
  wire c2_carry_i_4_n_0;
  wire c2_carry_n_0;
  wire c2_carry_n_1;
  wire c2_carry_n_2;
  wire c2_carry_n_3;
  wire \c[0]_i_1_n_0 ;
  wire \c[10]_i_1_n_0 ;
  wire \c[11]_i_1_n_0 ;
  wire \c[11]_i_3_n_0 ;
  wire \c[11]_i_4_n_0 ;
  wire \c[11]_i_5_n_0 ;
  wire \c[11]_i_6_n_0 ;
  wire \c[12]_i_1_n_0 ;
  wire \c[13]_i_1_n_0 ;
  wire \c[14]_i_1_n_0 ;
  wire \c[15]_i_2_n_0 ;
  wire \c[15]_i_4_n_0 ;
  wire \c[15]_i_5_n_0 ;
  wire \c[15]_i_6_n_0 ;
  wire \c[15]_i_7_n_0 ;
  wire \c[1]_i_1_n_0 ;
  wire \c[2]_i_1_n_0 ;
  wire \c[3]_i_1_n_0 ;
  wire \c[3]_i_3_n_0 ;
  wire \c[3]_i_4_n_0 ;
  wire \c[3]_i_5_n_0 ;
  wire \c[3]_i_6_n_0 ;
  wire \c[4]_i_1_n_0 ;
  wire \c[5]_i_1_n_0 ;
  wire \c[6]_i_1_n_0 ;
  wire \c[7]_i_1_n_0 ;
  wire \c[7]_i_3_n_0 ;
  wire \c[7]_i_4_n_0 ;
  wire \c[7]_i_5_n_0 ;
  wire \c[7]_i_6_n_0 ;
  wire \c[8]_i_1_n_0 ;
  wire \c[9]_i_1_n_0 ;
  wire c_3;
  wire \c_reg[11]_i_2_n_0 ;
  wire \c_reg[11]_i_2_n_1 ;
  wire \c_reg[11]_i_2_n_2 ;
  wire \c_reg[11]_i_2_n_3 ;
  wire \c_reg[15]_i_3_n_1 ;
  wire \c_reg[15]_i_3_n_2 ;
  wire \c_reg[15]_i_3_n_3 ;
  wire \c_reg[3]_i_2_n_0 ;
  wire \c_reg[3]_i_2_n_1 ;
  wire \c_reg[3]_i_2_n_2 ;
  wire \c_reg[3]_i_2_n_3 ;
  wire \c_reg[7]_i_2_n_0 ;
  wire \c_reg[7]_i_2_n_1 ;
  wire \c_reg[7]_i_2_n_2 ;
  wire \c_reg[7]_i_2_n_3 ;
  wire \cipher[7]_i_1_n_0 ;
  wire [7:0]\ciphertext_reg_reg[7] ;
  wire clk_IBUF_BUFG;
  wire [15:0]data1;
  wire encrypt_en;
  wire encrypt_en_reg;
  wire [8:0]i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[4]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[7]_i_1_n_0 ;
  wire \i[8]_i_1_n_0 ;
  wire \i[8]_i_2_n_0 ;
  wire \i[8]_i_3_n_0 ;
  wire [7:7]n1;
  wire n1_1;
  wire [2:0]n_state;
  wire \n_state[0]_i_1_n_0 ;
  wire \n_state[1]_i_1_n_0 ;
  wire \n_state[2]_i_1_n_0 ;
  wire \n_state[2]_i_2_n_0 ;
  wire \n_state[2]_i_3_n_0 ;
  wire \n_state[2]_i_4_n_0 ;
  wire \n_state[2]_i_6_n_0 ;
  wire \n_state[2]_i_7_n_0 ;
  wire \n_state[2]_i_8_n_0 ;
  wire n_state_0;
  wire [15:0]p_0_in;
  wire [2:0]p_state;
  wire ready;
  wire ready_flag_i_1_n_0;
  wire [15:0]x;
  wire x1;
  wire x1_carry_i_1_n_0;
  wire x1_carry_i_2_n_0;
  wire x1_carry_i_3_n_0;
  wire x1_carry_n_2;
  wire x1_carry_n_3;
  wire x_2;
  wire [7:0]y;
  wire [0:0]NLW_a10_carry_O_UNCONNECTED;
  wire [3:1]NLW_a10_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_a10_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_a11_carry_O_UNCONNECTED;
  wire [3:0]NLW_a11_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_c1_carry_O_UNCONNECTED;
  wire [3:0]NLW_c1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_c2_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_c_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]NLW_x1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_x1_carry_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_an[2]_i_1 
       (.I0(btnCpuReset_IBUF),
        .O(AR));
  CARRY4 a10_carry
       (.CI(1'b0),
        .CO({a10_carry_n_0,a10_carry_n_1,a10_carry_n_2,a10_carry_n_3}),
        .CYINIT(1'b1),
        .DI(a12[5:2]),
        .O({a10[5:3],NLW_a10_carry_O_UNCONNECTED[0]}),
        .S({a10_carry_i_1_n_0,a10_carry_i_2_n_0,a10_carry_i_3_n_0,a10_carry_i_4_n_0}));
  CARRY4 a10_carry__0
       (.CI(a10_carry_n_0),
        .CO({a10_carry__0_n_0,a10_carry__0_n_1,a10_carry__0_n_2,a10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(a12[9:6]),
        .O(a10[9:6]),
        .S({a10_carry__0_i_1_n_0,a10_carry__0_i_2_n_0,a10_carry__0_i_3_n_0,a10_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__0_i_1
       (.I0(a12[9]),
        .O(a10_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__0_i_2
       (.I0(a12[8]),
        .O(a10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    a10_carry__0_i_3
       (.I0(a12[7]),
        .I1(n1),
        .O(a10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    a10_carry__0_i_4
       (.I0(a12[6]),
        .I1(n1),
        .O(a10_carry__0_i_4_n_0));
  CARRY4 a10_carry__1
       (.CI(a10_carry__0_n_0),
        .CO({a10_carry__1_n_0,a10_carry__1_n_1,a10_carry__1_n_2,a10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(a12[13:10]),
        .O(a10[13:10]),
        .S({a10_carry__1_i_1_n_0,a10_carry__1_i_2_n_0,a10_carry__1_i_3_n_0,a10_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__1_i_1
       (.I0(a12[13]),
        .O(a10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__1_i_2
       (.I0(a12[12]),
        .O(a10_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__1_i_3
       (.I0(a12[11]),
        .O(a10_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__1_i_4
       (.I0(a12[10]),
        .O(a10_carry__1_i_4_n_0));
  CARRY4 a10_carry__2
       (.CI(a10_carry__1_n_0),
        .CO({NLW_a10_carry__2_CO_UNCONNECTED[3:1],a10_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,a12[14]}),
        .O({NLW_a10_carry__2_O_UNCONNECTED[3:2],a10[15:14]}),
        .S({1'b0,1'b0,a10_carry__2_i_1_n_0,a10_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__2_i_1
       (.I0(a12[15]),
        .O(a10_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__2_i_2
       (.I0(a12[14]),
        .O(a10_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry_i_1
       (.I0(a12[5]),
        .O(a10_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry_i_2
       (.I0(a12[4]),
        .O(a10_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    a10_carry_i_3
       (.I0(a12[3]),
        .I1(n1),
        .O(a10_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    a10_carry_i_4
       (.I0(a12[2]),
        .I1(n1),
        .O(a10_carry_i_4_n_0));
  CARRY4 a11_carry
       (.CI(1'b0),
        .CO({a11_carry_n_0,a11_carry_n_1,a11_carry_n_2,a11_carry_n_3}),
        .CYINIT(1'b1),
        .DI({a11_carry_i_1_n_0,a11_carry_i_2_n_0,a11_carry_i_3_n_0,a12[1]}),
        .O(NLW_a11_carry_O_UNCONNECTED[3:0]),
        .S({a11_carry_i_4_n_0,a11_carry_i_5_n_0,a11_carry_i_6_n_0,a11_carry_i_7_n_0}));
  CARRY4 a11_carry__0
       (.CI(a11_carry_n_0),
        .CO({a11,a11_carry__0_n_1,a11_carry__0_n_2,a11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({a11_carry__0_i_1_n_0,a11_carry__0_i_2_n_0,a11_carry__0_i_3_n_0,a11_carry__0_i_4_n_0}),
        .O(NLW_a11_carry__0_O_UNCONNECTED[3:0]),
        .S({a11_carry__0_i_5_n_0,a11_carry__0_i_6_n_0,a11_carry__0_i_7_n_0,a11_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    a11_carry__0_i_1
       (.I0(a12[14]),
        .I1(a12[15]),
        .O(a11_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    a11_carry__0_i_2
       (.I0(a12[12]),
        .I1(a12[13]),
        .O(a11_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    a11_carry__0_i_3
       (.I0(a12[10]),
        .I1(a12[11]),
        .O(a11_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    a11_carry__0_i_4
       (.I0(a12[8]),
        .I1(a12[9]),
        .O(a11_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    a11_carry__0_i_5
       (.I0(a12[15]),
        .I1(a12[14]),
        .O(a11_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    a11_carry__0_i_6
       (.I0(a12[13]),
        .I1(a12[12]),
        .O(a11_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    a11_carry__0_i_7
       (.I0(a12[11]),
        .I1(a12[10]),
        .O(a11_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    a11_carry__0_i_8
       (.I0(a12[9]),
        .I1(a12[8]),
        .O(a11_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    a11_carry_i_1
       (.I0(a12[7]),
        .I1(a12[6]),
        .I2(n1),
        .O(a11_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    a11_carry_i_2
       (.I0(a12[4]),
        .I1(a12[5]),
        .O(a11_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    a11_carry_i_3
       (.I0(a12[3]),
        .I1(a12[2]),
        .I2(n1),
        .O(a11_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    a11_carry_i_4
       (.I0(n1),
        .I1(a12[6]),
        .I2(a12[7]),
        .O(a11_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    a11_carry_i_5
       (.I0(a12[5]),
        .I1(a12[4]),
        .O(a11_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    a11_carry_i_6
       (.I0(n1),
        .I1(a12[2]),
        .I2(a12[3]),
        .O(a11_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a11_carry_i_7
       (.I0(a12[1]),
        .O(a11_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \a1[0]_i_1 
       (.I0(\a1[15]_i_4_n_0 ),
        .I1(x[0]),
        .I2(\a1[15]_i_5_n_0 ),
        .I3(c[0]),
        .I4(\a1[0]_i_2_n_0 ),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \a1[0]_i_2 
       (.I0(y[0]),
        .I1(\a1[7]_i_4_n_0 ),
        .I2(p_state[1]),
        .I3(Q[0]),
        .O(\a1[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \a1[10]_i_1 
       (.I0(\a1[10]_i_2_n_0 ),
        .I1(\a1[15]_i_4_n_0 ),
        .I2(x[10]),
        .I3(\a1[15]_i_5_n_0 ),
        .I4(c[10]),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \a1[10]_i_2 
       (.I0(a10[10]),
        .I1(a12[10]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .I4(a11),
        .O(\a1[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \a1[11]_i_1 
       (.I0(\a1[11]_i_2_n_0 ),
        .I1(\a1[15]_i_4_n_0 ),
        .I2(x[11]),
        .I3(\a1[15]_i_5_n_0 ),
        .I4(c[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \a1[11]_i_2 
       (.I0(a10[11]),
        .I1(a12[11]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .I4(a11),
        .O(\a1[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \a1[12]_i_1 
       (.I0(\a1[12]_i_2_n_0 ),
        .I1(\a1[15]_i_4_n_0 ),
        .I2(x[12]),
        .I3(\a1[15]_i_5_n_0 ),
        .I4(c[12]),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \a1[12]_i_2 
       (.I0(a10[12]),
        .I1(a12[12]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .I4(a11),
        .O(\a1[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \a1[13]_i_1 
       (.I0(\a1[13]_i_2_n_0 ),
        .I1(\a1[15]_i_4_n_0 ),
        .I2(x[13]),
        .I3(\a1[15]_i_5_n_0 ),
        .I4(c[13]),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \a1[13]_i_2 
       (.I0(a10[13]),
        .I1(a12[13]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .I4(a11),
        .O(\a1[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \a1[14]_i_1 
       (.I0(\a1[14]_i_2_n_0 ),
        .I1(\a1[15]_i_4_n_0 ),
        .I2(x[14]),
        .I3(\a1[15]_i_5_n_0 ),
        .I4(c[14]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \a1[14]_i_2 
       (.I0(a10[14]),
        .I1(a12[14]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .I4(a11),
        .O(\a1[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0D00)) 
    \a1[15]_i_1 
       (.I0(p_state[0]),
        .I1(p_state[1]),
        .I2(p_state[2]),
        .I3(encrypt_en),
        .O(\a1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \a1[15]_i_2 
       (.I0(\a1[15]_i_3_n_0 ),
        .I1(\a1[15]_i_4_n_0 ),
        .I2(x[15]),
        .I3(\a1[15]_i_5_n_0 ),
        .I4(c[15]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \a1[15]_i_3 
       (.I0(a10[15]),
        .I1(a12[15]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .I4(a11),
        .O(\a1[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \a1[15]_i_4 
       (.I0(\n_state[2]_i_3_n_0 ),
        .I1(p_state[1]),
        .I2(p_state[0]),
        .I3(x1),
        .O(\a1[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \a1[15]_i_5 
       (.I0(\n_state[2]_i_3_n_0 ),
        .I1(p_state[1]),
        .I2(p_state[0]),
        .I3(x1),
        .O(\a1[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \a1[1]_i_1 
       (.I0(\a1[1]_i_2_n_0 ),
        .I1(\a1[15]_i_4_n_0 ),
        .I2(x[1]),
        .I3(\a1[15]_i_5_n_0 ),
        .I4(c[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFFFFE222E222E222)) 
    \a1[1]_i_2 
       (.I0(Q[1]),
        .I1(p_state[1]),
        .I2(p_state[0]),
        .I3(a12[1]),
        .I4(y[1]),
        .I5(\a1[7]_i_4_n_0 ),
        .O(\a1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \a1[2]_i_1 
       (.I0(\a1[2]_i_2_n_0 ),
        .I1(\a1[2]_i_3_n_0 ),
        .I2(\a1[15]_i_4_n_0 ),
        .I3(x[2]),
        .I4(\a1[15]_i_5_n_0 ),
        .I5(c[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \a1[2]_i_2 
       (.I0(a12[2]),
        .I1(p_state[0]),
        .I2(a11),
        .I3(p_state[1]),
        .I4(Q[2]),
        .O(\a1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF600060006000)) 
    \a1[2]_i_3 
       (.I0(a12[2]),
        .I1(n1),
        .I2(\a1[2]_i_4_n_0 ),
        .I3(a11),
        .I4(y[2]),
        .I5(\a1[7]_i_4_n_0 ),
        .O(\a1[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a1[2]_i_4 
       (.I0(p_state[0]),
        .I1(p_state[1]),
        .O(\a1[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \a1[3]_i_1 
       (.I0(\a1[3]_i_2_n_0 ),
        .I1(\a1[3]_i_3_n_0 ),
        .I2(\a1[15]_i_4_n_0 ),
        .I3(x[3]),
        .I4(\a1[15]_i_5_n_0 ),
        .I5(c[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \a1[3]_i_2 
       (.I0(a12[3]),
        .I1(p_state[0]),
        .I2(a11),
        .I3(p_state[1]),
        .I4(Q[3]),
        .O(\a1[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \a1[3]_i_3 
       (.I0(a10[3]),
        .I1(p_state[1]),
        .I2(p_state[0]),
        .I3(a11),
        .I4(y[3]),
        .I5(\a1[7]_i_4_n_0 ),
        .O(\a1[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \a1[4]_i_1 
       (.I0(\a1[4]_i_2_n_0 ),
        .I1(\a1[4]_i_3_n_0 ),
        .I2(\a1[15]_i_4_n_0 ),
        .I3(x[4]),
        .I4(\a1[15]_i_5_n_0 ),
        .I5(c[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \a1[4]_i_2 
       (.I0(a12[4]),
        .I1(p_state[0]),
        .I2(a11),
        .I3(p_state[1]),
        .I4(Q[4]),
        .O(\a1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \a1[4]_i_3 
       (.I0(a10[4]),
        .I1(p_state[1]),
        .I2(p_state[0]),
        .I3(a11),
        .I4(y[4]),
        .I5(\a1[7]_i_4_n_0 ),
        .O(\a1[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \a1[5]_i_1 
       (.I0(\a1[5]_i_2_n_0 ),
        .I1(\a1[5]_i_3_n_0 ),
        .I2(\a1[15]_i_4_n_0 ),
        .I3(x[5]),
        .I4(\a1[15]_i_5_n_0 ),
        .I5(c[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \a1[5]_i_2 
       (.I0(a12[5]),
        .I1(p_state[0]),
        .I2(a11),
        .I3(p_state[1]),
        .I4(Q[5]),
        .O(\a1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \a1[5]_i_3 
       (.I0(a10[5]),
        .I1(p_state[1]),
        .I2(p_state[0]),
        .I3(a11),
        .I4(y[5]),
        .I5(\a1[7]_i_4_n_0 ),
        .O(\a1[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \a1[6]_i_1 
       (.I0(\a1[6]_i_2_n_0 ),
        .I1(\a1[6]_i_3_n_0 ),
        .I2(\a1[15]_i_4_n_0 ),
        .I3(x[6]),
        .I4(\a1[15]_i_5_n_0 ),
        .I5(c[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \a1[6]_i_2 
       (.I0(a12[6]),
        .I1(p_state[0]),
        .I2(a11),
        .I3(p_state[1]),
        .I4(Q[6]),
        .O(\a1[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \a1[6]_i_3 
       (.I0(a10[6]),
        .I1(p_state[1]),
        .I2(p_state[0]),
        .I3(a11),
        .I4(y[6]),
        .I5(\a1[7]_i_4_n_0 ),
        .O(\a1[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \a1[7]_i_1 
       (.I0(\a1[7]_i_2_n_0 ),
        .I1(\a1[7]_i_3_n_0 ),
        .I2(\a1[15]_i_4_n_0 ),
        .I3(x[7]),
        .I4(\a1[15]_i_5_n_0 ),
        .I5(c[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \a1[7]_i_2 
       (.I0(a12[7]),
        .I1(p_state[0]),
        .I2(a11),
        .I3(p_state[1]),
        .I4(Q[7]),
        .O(\a1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \a1[7]_i_3 
       (.I0(a10[7]),
        .I1(p_state[1]),
        .I2(p_state[0]),
        .I3(a11),
        .I4(y[7]),
        .I5(\a1[7]_i_4_n_0 ),
        .O(\a1[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \a1[7]_i_4 
       (.I0(\a1[7]_i_5_n_0 ),
        .I1(\i[8]_i_3_n_0 ),
        .I2(i[6]),
        .I3(i[5]),
        .I4(i[8]),
        .I5(i[7]),
        .O(\a1[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a1[7]_i_5 
       (.I0(p_state[1]),
        .I1(p_state[0]),
        .O(\a1[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \a1[8]_i_1 
       (.I0(\a1[8]_i_2_n_0 ),
        .I1(\a1[15]_i_4_n_0 ),
        .I2(x[8]),
        .I3(\a1[15]_i_5_n_0 ),
        .I4(c[8]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \a1[8]_i_2 
       (.I0(a10[8]),
        .I1(a12[8]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .I4(a11),
        .O(\a1[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \a1[9]_i_1 
       (.I0(\a1[9]_i_2_n_0 ),
        .I1(\a1[15]_i_4_n_0 ),
        .I2(x[9]),
        .I3(\a1[15]_i_5_n_0 ),
        .I4(c[9]),
        .O(p_0_in[9]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \a1[9]_i_2 
       (.I0(a10[9]),
        .I1(a12[9]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .I4(a11),
        .O(\a1[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(a12[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[10]),
        .Q(a12[11]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[11]),
        .Q(a12[12]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[12]),
        .Q(a12[13]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[13]),
        .Q(a12[14]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[14]),
        .Q(a12[15]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[15]),
        .Q(\a1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(a12[2]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(a12[3]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(a12[4]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(a12[5]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(a12[6]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(a12[7]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(a12[8]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(a12[9]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[9]),
        .Q(a12[10]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \b[0]_i_1 
       (.I0(Q[0]),
        .I1(c[0]),
        .I2(\b_reg_n_0_[1] ),
        .I3(p_state[0]),
        .I4(p_state[1]),
        .O(\b[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \b[10]_i_1 
       (.I0(\b_reg_n_0_[11] ),
        .I1(c[10]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .O(\b[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \b[11]_i_1 
       (.I0(\b_reg_n_0_[12] ),
        .I1(c[11]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .O(\b[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \b[12]_i_1 
       (.I0(\b_reg_n_0_[13] ),
        .I1(c[12]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .O(\b[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \b[13]_i_1 
       (.I0(\b_reg_n_0_[14] ),
        .I1(c[13]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .O(\b[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \b[14]_i_1 
       (.I0(\b_reg_n_0_[15] ),
        .I1(c[14]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .O(\b[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \b[15]_i_1 
       (.I0(p_state[0]),
        .I1(p_state[1]),
        .I2(c[15]),
        .O(\b[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \b[1]_i_1 
       (.I0(Q[1]),
        .I1(c[1]),
        .I2(\b_reg_n_0_[2] ),
        .I3(p_state[0]),
        .I4(p_state[1]),
        .O(\b[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \b[2]_i_1 
       (.I0(Q[2]),
        .I1(c[2]),
        .I2(\b_reg_n_0_[3] ),
        .I3(p_state[0]),
        .I4(p_state[1]),
        .O(\b[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \b[3]_i_1 
       (.I0(Q[3]),
        .I1(c[3]),
        .I2(\b_reg_n_0_[4] ),
        .I3(p_state[0]),
        .I4(p_state[1]),
        .O(\b[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \b[4]_i_1 
       (.I0(Q[4]),
        .I1(c[4]),
        .I2(\b_reg_n_0_[5] ),
        .I3(p_state[0]),
        .I4(p_state[1]),
        .O(\b[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \b[5]_i_1 
       (.I0(Q[5]),
        .I1(c[5]),
        .I2(\b_reg_n_0_[6] ),
        .I3(p_state[0]),
        .I4(p_state[1]),
        .O(\b[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \b[6]_i_1 
       (.I0(Q[6]),
        .I1(c[6]),
        .I2(\b_reg_n_0_[7] ),
        .I3(p_state[0]),
        .I4(p_state[1]),
        .O(\b[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \b[7]_i_1 
       (.I0(Q[7]),
        .I1(c[7]),
        .I2(\b_reg_n_0_[8] ),
        .I3(p_state[0]),
        .I4(p_state[1]),
        .O(\b[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \b[8]_i_1 
       (.I0(\b_reg_n_0_[9] ),
        .I1(c[8]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .O(\b[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \b[9]_i_1 
       (.I0(\b_reg_n_0_[10] ),
        .I1(c[9]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .O(\b[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[0]_i_1_n_0 ),
        .Q(b));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[10]_i_1_n_0 ),
        .Q(\b_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[11]_i_1_n_0 ),
        .Q(\b_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[12]_i_1_n_0 ),
        .Q(\b_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[13]_i_1_n_0 ),
        .Q(\b_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[14]_i_1_n_0 ),
        .Q(\b_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[15]_i_1_n_0 ),
        .Q(\b_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[1]_i_1_n_0 ),
        .Q(\b_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[2]_i_1_n_0 ),
        .Q(\b_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[3]_i_1_n_0 ),
        .Q(\b_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[4]_i_1_n_0 ),
        .Q(\b_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[5]_i_1_n_0 ),
        .Q(\b_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[6]_i_1_n_0 ),
        .Q(\b_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[7]_i_1_n_0 ),
        .Q(\b_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[8]_i_1_n_0 ),
        .Q(\b_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[15]_i_1_n_0 ),
        .CLR(AR),
        .D(\b[9]_i_1_n_0 ),
        .Q(\b_reg_n_0_[9] ));
  CARRY4 c1_carry
       (.CI(1'b0),
        .CO({c1_carry_n_0,c1_carry_n_1,c1_carry_n_2,c1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({c1_carry_i_1_n_0,c1_carry_i_2_n_0,c1_carry_i_3_n_0,c1_carry_i_4_n_0}),
        .O(NLW_c1_carry_O_UNCONNECTED[3:0]),
        .S({c1_carry_i_5_n_0,c1_carry_i_6_n_0,c1_carry_i_7_n_0,c1_carry_i_8_n_0}));
  CARRY4 c1_carry__0
       (.CI(c1_carry_n_0),
        .CO({c1,c1_carry__0_n_1,c1_carry__0_n_2,c1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({c1_carry__0_i_1_n_0,c1_carry__0_i_2_n_0,c1_carry__0_i_3_n_0,c1_carry__0_i_4_n_0}),
        .O(NLW_c1_carry__0_O_UNCONNECTED[3:0]),
        .S({c1_carry__0_i_5_n_0,c1_carry__0_i_6_n_0,c1_carry__0_i_7_n_0,c1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__0_i_1
       (.I0(c2[14]),
        .I1(c2[15]),
        .O(c1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__0_i_2
       (.I0(c2[12]),
        .I1(c2[13]),
        .O(c1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__0_i_3
       (.I0(c2[10]),
        .I1(c2[11]),
        .O(c1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__0_i_4
       (.I0(c2[8]),
        .I1(c2[9]),
        .O(c1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_5
       (.I0(c2[15]),
        .I1(c2[14]),
        .O(c1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_6
       (.I0(c2[13]),
        .I1(c2[12]),
        .O(c1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_7
       (.I0(c2[11]),
        .I1(c2[10]),
        .O(c1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_8
       (.I0(c2[9]),
        .I1(c2[8]),
        .O(c1_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    c1_carry_i_1
       (.I0(c2[7]),
        .I1(c2[6]),
        .I2(n1),
        .O(c1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry_i_2
       (.I0(c2[4]),
        .I1(c2[5]),
        .O(c1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    c1_carry_i_3
       (.I0(c2[3]),
        .I1(c2[2]),
        .I2(n1),
        .O(c1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry_i_4
       (.I0(c2[0]),
        .I1(c2[1]),
        .O(c1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    c1_carry_i_5
       (.I0(n1),
        .I1(c2[6]),
        .I2(c2[7]),
        .O(c1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry_i_6
       (.I0(c2[5]),
        .I1(c2[4]),
        .O(c1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    c1_carry_i_7
       (.I0(n1),
        .I1(c2[2]),
        .I2(c2[3]),
        .O(c1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry_i_8
       (.I0(c2[1]),
        .I1(c2[0]),
        .O(c1_carry_i_8_n_0));
  CARRY4 c2_carry
       (.CI(1'b0),
        .CO({c2_carry_n_0,c2_carry_n_1,c2_carry_n_2,c2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(c[3:0]),
        .O(c2[3:0]),
        .S({c2_carry_i_1_n_0,c2_carry_i_2_n_0,c2_carry_i_3_n_0,c2_carry_i_4_n_0}));
  CARRY4 c2_carry__0
       (.CI(c2_carry_n_0),
        .CO({c2_carry__0_n_0,c2_carry__0_n_1,c2_carry__0_n_2,c2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(c[7:4]),
        .O(c2[7:4]),
        .S({c2_carry__0_i_1_n_0,c2_carry__0_i_2_n_0,c2_carry__0_i_3_n_0,c2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__0_i_1
       (.I0(c[7]),
        .I1(a12[8]),
        .O(c2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__0_i_2
       (.I0(c[6]),
        .I1(a12[7]),
        .O(c2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__0_i_3
       (.I0(c[5]),
        .I1(a12[6]),
        .O(c2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__0_i_4
       (.I0(c[4]),
        .I1(a12[5]),
        .O(c2_carry__0_i_4_n_0));
  CARRY4 c2_carry__1
       (.CI(c2_carry__0_n_0),
        .CO({c2_carry__1_n_0,c2_carry__1_n_1,c2_carry__1_n_2,c2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(c[11:8]),
        .O(c2[11:8]),
        .S({c2_carry__1_i_1_n_0,c2_carry__1_i_2_n_0,c2_carry__1_i_3_n_0,c2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__1_i_1
       (.I0(c[11]),
        .I1(a12[12]),
        .O(c2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__1_i_2
       (.I0(c[10]),
        .I1(a12[11]),
        .O(c2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__1_i_3
       (.I0(c[9]),
        .I1(a12[10]),
        .O(c2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__1_i_4
       (.I0(c[8]),
        .I1(a12[9]),
        .O(c2_carry__1_i_4_n_0));
  CARRY4 c2_carry__2
       (.CI(c2_carry__1_n_0),
        .CO({NLW_c2_carry__2_CO_UNCONNECTED[3],c2_carry__2_n_1,c2_carry__2_n_2,c2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,c[14:12]}),
        .O(c2[15:12]),
        .S({c2_carry__2_i_1_n_0,c2_carry__2_i_2_n_0,c2_carry__2_i_3_n_0,c2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__2_i_1
       (.I0(\a1_reg_n_0_[15] ),
        .I1(c[15]),
        .O(c2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__2_i_2
       (.I0(c[14]),
        .I1(a12[15]),
        .O(c2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__2_i_3
       (.I0(c[13]),
        .I1(a12[14]),
        .O(c2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry__2_i_4
       (.I0(c[12]),
        .I1(a12[13]),
        .O(c2_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry_i_1
       (.I0(c[3]),
        .I1(a12[4]),
        .O(c2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry_i_2
       (.I0(c[2]),
        .I1(a12[3]),
        .O(c2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry_i_3
       (.I0(c[1]),
        .I1(a12[2]),
        .O(c2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c2_carry_i_4
       (.I0(c[0]),
        .I1(a12[1]),
        .O(c2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[0]_i_1 
       (.I0(c0[0]),
        .I1(c2[0]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[10]_i_1 
       (.I0(c0[10]),
        .I1(c2[10]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[11]_i_1 
       (.I0(c0[11]),
        .I1(c2[11]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[11]_i_3 
       (.I0(c2[11]),
        .O(\c[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[11]_i_4 
       (.I0(c2[10]),
        .O(\c[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[11]_i_5 
       (.I0(c2[9]),
        .O(\c[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[11]_i_6 
       (.I0(c2[8]),
        .O(\c[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[12]_i_1 
       (.I0(c0[12]),
        .I1(c2[12]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[13]_i_1 
       (.I0(c0[13]),
        .I1(c2[13]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[14]_i_1 
       (.I0(c0[14]),
        .I1(c2[14]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008C00)) 
    \c[15]_i_1 
       (.I0(b),
        .I1(p_state[1]),
        .I2(p_state[0]),
        .I3(encrypt_en),
        .I4(p_state[2]),
        .O(c_3));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[15]_i_2 
       (.I0(c0[15]),
        .I1(c2[15]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[15]_i_4 
       (.I0(c2[15]),
        .O(\c[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[15]_i_5 
       (.I0(c2[14]),
        .O(\c[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[15]_i_6 
       (.I0(c2[13]),
        .O(\c[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[15]_i_7 
       (.I0(c2[12]),
        .O(\c[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[1]_i_1 
       (.I0(c0[1]),
        .I1(c2[1]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[2]_i_1 
       (.I0(c0[2]),
        .I1(c2[2]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[3]_i_1 
       (.I0(c0[3]),
        .I1(c2[3]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \c[3]_i_3 
       (.I0(c2[3]),
        .I1(n1),
        .O(\c[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \c[3]_i_4 
       (.I0(c2[2]),
        .I1(n1),
        .O(\c[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[3]_i_5 
       (.I0(c2[1]),
        .O(\c[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[3]_i_6 
       (.I0(c2[0]),
        .O(\c[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[4]_i_1 
       (.I0(c0[4]),
        .I1(c2[4]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[5]_i_1 
       (.I0(c0[5]),
        .I1(c2[5]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[6]_i_1 
       (.I0(c0[6]),
        .I1(c2[6]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[7]_i_1 
       (.I0(c0[7]),
        .I1(c2[7]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \c[7]_i_3 
       (.I0(c2[7]),
        .I1(n1),
        .O(\c[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \c[7]_i_4 
       (.I0(c2[6]),
        .I1(n1),
        .O(\c[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[7]_i_5 
       (.I0(c2[5]),
        .O(\c[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c[7]_i_6 
       (.I0(c2[4]),
        .O(\c[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[8]_i_1 
       (.I0(c0[8]),
        .I1(c2[8]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \c[9]_i_1 
       (.I0(c0[9]),
        .I1(c2[9]),
        .I2(p_state[0]),
        .I3(c1),
        .O(\c[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[0]_i_1_n_0 ),
        .Q(c[0]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[10]_i_1_n_0 ),
        .Q(c[10]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[11]_i_1_n_0 ),
        .Q(c[11]));
  CARRY4 \c_reg[11]_i_2 
       (.CI(\c_reg[7]_i_2_n_0 ),
        .CO({\c_reg[11]_i_2_n_0 ,\c_reg[11]_i_2_n_1 ,\c_reg[11]_i_2_n_2 ,\c_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(c2[11:8]),
        .O(c0[11:8]),
        .S({\c[11]_i_3_n_0 ,\c[11]_i_4_n_0 ,\c[11]_i_5_n_0 ,\c[11]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[12]_i_1_n_0 ),
        .Q(c[12]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[13]_i_1_n_0 ),
        .Q(c[13]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[14]_i_1_n_0 ),
        .Q(c[14]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[15]_i_2_n_0 ),
        .Q(c[15]));
  CARRY4 \c_reg[15]_i_3 
       (.CI(\c_reg[11]_i_2_n_0 ),
        .CO({\NLW_c_reg[15]_i_3_CO_UNCONNECTED [3],\c_reg[15]_i_3_n_1 ,\c_reg[15]_i_3_n_2 ,\c_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,c2[14:12]}),
        .O(c0[15:12]),
        .S({\c[15]_i_4_n_0 ,\c[15]_i_5_n_0 ,\c[15]_i_6_n_0 ,\c[15]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[1]_i_1_n_0 ),
        .Q(c[1]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[2]_i_1_n_0 ),
        .Q(c[2]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[3]_i_1_n_0 ),
        .Q(c[3]));
  CARRY4 \c_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\c_reg[3]_i_2_n_0 ,\c_reg[3]_i_2_n_1 ,\c_reg[3]_i_2_n_2 ,\c_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(c2[3:0]),
        .O(c0[3:0]),
        .S({\c[3]_i_3_n_0 ,\c[3]_i_4_n_0 ,\c[3]_i_5_n_0 ,\c[3]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[4]_i_1_n_0 ),
        .Q(c[4]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[5]_i_1_n_0 ),
        .Q(c[5]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[6]_i_1_n_0 ),
        .Q(c[6]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[7]_i_1_n_0 ),
        .Q(c[7]));
  CARRY4 \c_reg[7]_i_2 
       (.CI(\c_reg[3]_i_2_n_0 ),
        .CO({\c_reg[7]_i_2_n_0 ,\c_reg[7]_i_2_n_1 ,\c_reg[7]_i_2_n_2 ,\c_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(c2[7:4]),
        .O(c0[7:4]),
        .S({\c[7]_i_3_n_0 ,\c[7]_i_4_n_0 ,\c[7]_i_5_n_0 ,\c[7]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[8]_i_1_n_0 ),
        .Q(c[8]));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(c_3),
        .CLR(AR),
        .D(\c[9]_i_1_n_0 ),
        .Q(c[9]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \cipher[7]_i_1 
       (.I0(btnCpuReset_IBUF),
        .I1(p_state[2]),
        .I2(encrypt_en),
        .I3(p_state[1]),
        .I4(p_state[0]),
        .O(\cipher[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cipher_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cipher[7]_i_1_n_0 ),
        .D(c[0]),
        .Q(\ciphertext_reg_reg[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cipher_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cipher[7]_i_1_n_0 ),
        .D(c[1]),
        .Q(\ciphertext_reg_reg[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cipher_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cipher[7]_i_1_n_0 ),
        .D(c[2]),
        .Q(\ciphertext_reg_reg[7] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cipher_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cipher[7]_i_1_n_0 ),
        .D(c[3]),
        .Q(\ciphertext_reg_reg[7] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cipher_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cipher[7]_i_1_n_0 ),
        .D(c[4]),
        .Q(\ciphertext_reg_reg[7] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cipher_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cipher[7]_i_1_n_0 ),
        .D(c[5]),
        .Q(\ciphertext_reg_reg[7] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cipher_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cipher[7]_i_1_n_0 ),
        .D(c[6]),
        .Q(\ciphertext_reg_reg[7] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cipher_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cipher[7]_i_1_n_0 ),
        .D(c[7]),
        .Q(\ciphertext_reg_reg[7] [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ciphertext_reg[7]_i_1 
       (.I0(btn_flag),
        .I1(btnCpuReset_IBUF),
        .I2(ready),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    encrypt_en_i_1
       (.I0(btn_flag),
        .I1(ready),
        .I2(encrypt_en),
        .O(encrypt_en_reg));
  LUT2 #(
    .INIT(4'h7)) 
    \i[0]_i_1 
       (.I0(p_state[0]),
        .I1(i[0]),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \i[1]_i_1 
       (.I0(p_state[0]),
        .I1(i[0]),
        .I2(i[1]),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \i[2]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(p_state[0]),
        .O(\i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hAAA9FFFF)) 
    \i[3]_i_1 
       (.I0(i[3]),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .I4(p_state[0]),
        .O(\i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA900000000)) 
    \i[4]_i_1 
       (.I0(i[4]),
        .I1(i[3]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(i[2]),
        .I5(p_state[0]),
        .O(\i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \i[5]_i_1 
       (.I0(\i[8]_i_3_n_0 ),
        .I1(p_state[0]),
        .I2(i[5]),
        .O(\i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE010)) 
    \i[6]_i_1 
       (.I0(\i[8]_i_3_n_0 ),
        .I1(i[5]),
        .I2(p_state[0]),
        .I3(i[6]),
        .O(\i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFE010000)) 
    \i[7]_i_1 
       (.I0(\i[8]_i_3_n_0 ),
        .I1(i[5]),
        .I2(i[6]),
        .I3(i[7]),
        .I4(p_state[0]),
        .O(\i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001F0000)) 
    \i[8]_i_1 
       (.I0(\n_state[2]_i_3_n_0 ),
        .I1(\n_state[2]_i_4_n_0 ),
        .I2(p_state[0]),
        .I3(p_state[1]),
        .I4(encrypt_en),
        .I5(p_state[2]),
        .O(\i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000010000)) 
    \i[8]_i_2 
       (.I0(\i[8]_i_3_n_0 ),
        .I1(i[5]),
        .I2(i[6]),
        .I3(i[7]),
        .I4(p_state[0]),
        .I5(i[8]),
        .O(\i[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \i[8]_i_3 
       (.I0(i[4]),
        .I1(i[3]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(i[2]),
        .O(\i[8]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\i[0]_i_1_n_0 ),
        .Q(i[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\i[1]_i_1_n_0 ),
        .Q(i[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\i[2]_i_1_n_0 ),
        .Q(i[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\i[3]_i_1_n_0 ),
        .Q(i[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\i[4]_i_1_n_0 ),
        .Q(i[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\i[5]_i_1_n_0 ),
        .Q(i[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\i[6]_i_1_n_0 ),
        .Q(i[6]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\i[7]_i_1_n_0 ),
        .Q(i[7]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\i[8]_i_2_n_0 ),
        .Q(i[8]));
  LUT4 #(
    .INIT(16'h0004)) 
    \n1[7]_i_1 
       (.I0(p_state[2]),
        .I1(encrypt_en),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .O(n1_1));
  FDCE #(
    .INIT(1'b0)) 
    \n1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(n1_1),
        .CLR(AR),
        .D(1'b1),
        .Q(n1));
  LUT6 #(
    .INIT(64'h3233FFFF32330000)) 
    \n_state[0]_i_1 
       (.I0(\n_state[2]_i_4_n_0 ),
        .I1(p_state[2]),
        .I2(p_state[1]),
        .I3(p_state[0]),
        .I4(n_state_0),
        .I5(n_state[0]),
        .O(\n_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1101FFFF11010000)) 
    \n_state[1]_i_1 
       (.I0(p_state[2]),
        .I1(\n_state[2]_i_2_n_0 ),
        .I2(\n_state[2]_i_3_n_0 ),
        .I3(\n_state[2]_i_4_n_0 ),
        .I4(n_state_0),
        .I5(n_state[1]),
        .O(\n_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    \n_state[2]_i_1 
       (.I0(p_state[2]),
        .I1(\n_state[2]_i_2_n_0 ),
        .I2(\n_state[2]_i_3_n_0 ),
        .I3(\n_state[2]_i_4_n_0 ),
        .I4(n_state_0),
        .I5(n_state[2]),
        .O(\n_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \n_state[2]_i_2 
       (.I0(p_state[1]),
        .I1(p_state[0]),
        .O(\n_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \n_state[2]_i_3 
       (.I0(i[7]),
        .I1(i[8]),
        .I2(i[5]),
        .I3(i[6]),
        .I4(\i[8]_i_3_n_0 ),
        .O(\n_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \n_state[2]_i_4 
       (.I0(\n_state[2]_i_6_n_0 ),
        .I1(\b_reg_n_0_[15] ),
        .I2(\b_reg_n_0_[12] ),
        .I3(\b_reg_n_0_[14] ),
        .I4(\b_reg_n_0_[13] ),
        .I5(\n_state[2]_i_7_n_0 ),
        .O(\n_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFD000000)) 
    \n_state[2]_i_5 
       (.I0(p_state[2]),
        .I1(p_state[0]),
        .I2(p_state[1]),
        .I3(btnCpuReset_IBUF),
        .I4(encrypt_en),
        .O(n_state_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \n_state[2]_i_6 
       (.I0(\b_reg_n_0_[11] ),
        .I1(\b_reg_n_0_[10] ),
        .I2(\b_reg_n_0_[9] ),
        .I3(\b_reg_n_0_[8] ),
        .O(\n_state[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \n_state[2]_i_7 
       (.I0(\b_reg_n_0_[4] ),
        .I1(\b_reg_n_0_[5] ),
        .I2(\b_reg_n_0_[6] ),
        .I3(\b_reg_n_0_[7] ),
        .I4(\n_state[2]_i_8_n_0 ),
        .O(\n_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \n_state[2]_i_8 
       (.I0(\b_reg_n_0_[3] ),
        .I1(b),
        .I2(\b_reg_n_0_[2] ),
        .I3(\b_reg_n_0_[1] ),
        .O(\n_state[2]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \n_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_state[0]_i_1_n_0 ),
        .Q(n_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_state[1]_i_1_n_0 ),
        .Q(n_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_state[2]_i_1_n_0 ),
        .Q(n_state[2]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \p_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(n_state[0]),
        .Q(p_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(n_state[1]),
        .Q(p_state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(n_state[2]),
        .Q(p_state[2]));
  LUT5 #(
    .INIT(32'hFF001000)) 
    ready_flag_i_1
       (.I0(p_state[0]),
        .I1(p_state[1]),
        .I2(p_state[2]),
        .I3(encrypt_en),
        .I4(ready),
        .O(ready_flag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ready_flag_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(ready_flag_i_1_n_0),
        .Q(ready));
  CARRY4 x1_carry
       (.CI(1'b0),
        .CO({NLW_x1_carry_CO_UNCONNECTED[3],x1,x1_carry_n_2,x1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_x1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,x1_carry_i_1_n_0,x1_carry_i_2_n_0,x1_carry_i_3_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    x1_carry_i_1
       (.I0(i[8]),
        .I1(i[7]),
        .I2(i[6]),
        .O(x1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    x1_carry_i_2
       (.I0(i[5]),
        .I1(i[4]),
        .I2(i[3]),
        .O(x1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    x1_carry_i_3
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .O(x1_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[0]_i_1 
       (.I0(c[0]),
        .I1(x1),
        .I2(x[0]),
        .O(data1[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[10]_i_1 
       (.I0(c[10]),
        .I1(x1),
        .I2(x[10]),
        .O(data1[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[11]_i_1 
       (.I0(c[11]),
        .I1(x1),
        .I2(x[11]),
        .O(data1[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[12]_i_1 
       (.I0(c[12]),
        .I1(x1),
        .I2(x[12]),
        .O(data1[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[13]_i_1 
       (.I0(c[13]),
        .I1(x1),
        .I2(x[13]),
        .O(data1[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[14]_i_1 
       (.I0(c[14]),
        .I1(x1),
        .I2(x[14]),
        .O(data1[14]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \x[15]_i_1 
       (.I0(p_state[2]),
        .I1(encrypt_en),
        .I2(\n_state[2]_i_3_n_0 ),
        .I3(p_state[1]),
        .I4(p_state[0]),
        .O(x_2));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[15]_i_2 
       (.I0(c[15]),
        .I1(x1),
        .I2(x[15]),
        .O(data1[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[1]_i_1 
       (.I0(c[1]),
        .I1(x1),
        .I2(x[1]),
        .O(data1[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[2]_i_1 
       (.I0(c[2]),
        .I1(x1),
        .I2(x[2]),
        .O(data1[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3]_i_1 
       (.I0(c[3]),
        .I1(x1),
        .I2(x[3]),
        .O(data1[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[4]_i_1 
       (.I0(c[4]),
        .I1(x1),
        .I2(x[4]),
        .O(data1[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[5]_i_1 
       (.I0(c[5]),
        .I1(x1),
        .I2(x[5]),
        .O(data1[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6]_i_1 
       (.I0(c[6]),
        .I1(x1),
        .I2(x[6]),
        .O(data1[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[7]_i_1 
       (.I0(c[7]),
        .I1(x1),
        .I2(x[7]),
        .O(data1[7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[8]_i_1 
       (.I0(c[8]),
        .I1(x1),
        .I2(x[8]),
        .O(data1[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[9]_i_1 
       (.I0(c[9]),
        .I1(x1),
        .I2(x[9]),
        .O(data1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[0]),
        .Q(x[0]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[10]),
        .Q(x[10]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[11]),
        .Q(x[11]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[12]),
        .Q(x[12]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[13]),
        .Q(x[13]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[14]),
        .Q(x[14]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[15]),
        .Q(x[15]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[1]),
        .Q(x[1]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[2]),
        .Q(x[2]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[3]),
        .Q(x[3]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[4]),
        .Q(x[4]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[5]),
        .Q(x[5]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[6]),
        .Q(x[6]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[7]),
        .Q(x[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[8]),
        .Q(x[8]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(x_2),
        .CLR(AR),
        .D(data1[9]),
        .Q(x[9]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(n1_1),
        .CLR(AR),
        .D(Q[0]),
        .Q(y[0]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(n1_1),
        .CLR(AR),
        .D(Q[1]),
        .Q(y[1]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(n1_1),
        .CLR(AR),
        .D(Q[2]),
        .Q(y[2]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(n1_1),
        .CLR(AR),
        .D(Q[3]),
        .Q(y[3]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(n1_1),
        .CLR(AR),
        .D(Q[4]),
        .Q(y[4]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(n1_1),
        .CLR(AR),
        .D(Q[5]),
        .Q(y[5]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(n1_1),
        .CLR(AR),
        .D(Q[6]),
        .Q(y[6]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(n1_1),
        .CLR(AR),
        .D(Q[7]),
        .Q(y[7]));
endmodule

module sevensegment
   (dp,
    an_OBUF,
    Q,
    clk_IBUF_BUFG,
    SR,
    D);
  output [2:0]dp;
  output [7:0]an_OBUF;
  input [7:0]Q;
  input clk_IBUF_BUFG;
  input [0:0]SR;
  input [0:0]D;

  wire [0:0]D;
  wire Digit0_n_0;
  wire Digit1_n_0;
  wire Digit2_n_0;
  wire Digit3_n_0;
  wire Digit4_n_0;
  wire Digit5_n_0;
  wire Digit6_n_0;
  wire Digit7_n_0;
  wire \FSM_sequential_an[0]_i_1_n_0 ;
  wire \FSM_sequential_an[1]_i_1_n_0 ;
  wire \FSM_sequential_an[2]_i_10_n_0 ;
  wire \FSM_sequential_an[2]_i_11_n_0 ;
  wire \FSM_sequential_an[2]_i_2_n_0 ;
  wire \FSM_sequential_an[2]_i_3_n_0 ;
  wire \FSM_sequential_an[2]_i_4_n_0 ;
  wire \FSM_sequential_an[2]_i_5_n_0 ;
  wire \FSM_sequential_an[2]_i_6_n_0 ;
  wire \FSM_sequential_an[2]_i_7_n_0 ;
  wire \FSM_sequential_an[2]_i_8_n_0 ;
  wire \FSM_sequential_an[2]_i_9_n_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [7:0]an_OBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]an__0;
  wire clk_IBUF_BUFG;
  wire [31:0]clk_cnt;
  wire [31:0]clk_cnt_0;
  wire \clk_cnt_reg[12]_i_2_n_0 ;
  wire \clk_cnt_reg[12]_i_2_n_1 ;
  wire \clk_cnt_reg[12]_i_2_n_2 ;
  wire \clk_cnt_reg[12]_i_2_n_3 ;
  wire \clk_cnt_reg[12]_i_2_n_4 ;
  wire \clk_cnt_reg[12]_i_2_n_5 ;
  wire \clk_cnt_reg[12]_i_2_n_6 ;
  wire \clk_cnt_reg[12]_i_2_n_7 ;
  wire \clk_cnt_reg[16]_i_2_n_0 ;
  wire \clk_cnt_reg[16]_i_2_n_1 ;
  wire \clk_cnt_reg[16]_i_2_n_2 ;
  wire \clk_cnt_reg[16]_i_2_n_3 ;
  wire \clk_cnt_reg[16]_i_2_n_4 ;
  wire \clk_cnt_reg[16]_i_2_n_5 ;
  wire \clk_cnt_reg[16]_i_2_n_6 ;
  wire \clk_cnt_reg[16]_i_2_n_7 ;
  wire \clk_cnt_reg[20]_i_2_n_0 ;
  wire \clk_cnt_reg[20]_i_2_n_1 ;
  wire \clk_cnt_reg[20]_i_2_n_2 ;
  wire \clk_cnt_reg[20]_i_2_n_3 ;
  wire \clk_cnt_reg[20]_i_2_n_4 ;
  wire \clk_cnt_reg[20]_i_2_n_5 ;
  wire \clk_cnt_reg[20]_i_2_n_6 ;
  wire \clk_cnt_reg[20]_i_2_n_7 ;
  wire \clk_cnt_reg[24]_i_2_n_0 ;
  wire \clk_cnt_reg[24]_i_2_n_1 ;
  wire \clk_cnt_reg[24]_i_2_n_2 ;
  wire \clk_cnt_reg[24]_i_2_n_3 ;
  wire \clk_cnt_reg[24]_i_2_n_4 ;
  wire \clk_cnt_reg[24]_i_2_n_5 ;
  wire \clk_cnt_reg[24]_i_2_n_6 ;
  wire \clk_cnt_reg[24]_i_2_n_7 ;
  wire \clk_cnt_reg[28]_i_2_n_0 ;
  wire \clk_cnt_reg[28]_i_2_n_1 ;
  wire \clk_cnt_reg[28]_i_2_n_2 ;
  wire \clk_cnt_reg[28]_i_2_n_3 ;
  wire \clk_cnt_reg[28]_i_2_n_4 ;
  wire \clk_cnt_reg[28]_i_2_n_5 ;
  wire \clk_cnt_reg[28]_i_2_n_6 ;
  wire \clk_cnt_reg[28]_i_2_n_7 ;
  wire \clk_cnt_reg[31]_i_2_n_2 ;
  wire \clk_cnt_reg[31]_i_2_n_3 ;
  wire \clk_cnt_reg[31]_i_2_n_5 ;
  wire \clk_cnt_reg[31]_i_2_n_6 ;
  wire \clk_cnt_reg[31]_i_2_n_7 ;
  wire \clk_cnt_reg[4]_i_2_n_0 ;
  wire \clk_cnt_reg[4]_i_2_n_1 ;
  wire \clk_cnt_reg[4]_i_2_n_2 ;
  wire \clk_cnt_reg[4]_i_2_n_3 ;
  wire \clk_cnt_reg[4]_i_2_n_4 ;
  wire \clk_cnt_reg[4]_i_2_n_5 ;
  wire \clk_cnt_reg[4]_i_2_n_6 ;
  wire \clk_cnt_reg[4]_i_2_n_7 ;
  wire \clk_cnt_reg[8]_i_2_n_0 ;
  wire \clk_cnt_reg[8]_i_2_n_1 ;
  wire \clk_cnt_reg[8]_i_2_n_2 ;
  wire \clk_cnt_reg[8]_i_2_n_3 ;
  wire \clk_cnt_reg[8]_i_2_n_4 ;
  wire \clk_cnt_reg[8]_i_2_n_5 ;
  wire \clk_cnt_reg[8]_i_2_n_6 ;
  wire \clk_cnt_reg[8]_i_2_n_7 ;
  wire [2:0]dp;
  wire [5:5]seg__0;
  wire [3:2]\NLW_clk_cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_clk_cnt_reg[31]_i_2_O_UNCONNECTED ;

  Digit Digit0
       (.D(Digit0_n_0),
        .Q(seg__0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(an__0),
        .tick_out_reg_inv({D,Q[0]}));
  Digit_0 Digit1
       (.Q(Q[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\seg_reg[5]_0 (Digit1_n_0));
  Digit_1 Digit2
       (.Q(Q[2]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\seg_reg[5]_0 (Digit2_n_0));
  Digit_2 Digit3
       (.D(Digit3_n_0),
        .Q(Q[3]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(an__0),
        .\seg_reg[5]_0 (Digit7_n_0),
        .\seg_reg[5]_1 (Digit2_n_0),
        .\seg_reg[5]_2 (Digit1_n_0),
        .\seg_reg[5]_3 (seg__0));
  Digit_3 Digit4
       (.Q(Q[4]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\seg_reg[5]_0 (Digit4_n_0));
  Digit_4 Digit5
       (.Q(Q[5]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\seg_reg[5]_0 (Digit5_n_0));
  Digit_5 Digit6
       (.Q(Q[6]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\seg_reg[5]_0 (Digit6_n_0));
  Digit_6 Digit7
       (.Q(Q[7]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(an__0[1:0]),
        .\seg_reg[5]_0 (Digit7_n_0),
        .\seg_reg[5]_1 (Digit6_n_0),
        .\seg_reg[5]_2 (Digit5_n_0),
        .\seg_reg[5]_3 (Digit4_n_0));
  LUT3 #(
    .INIT(8'hD1)) 
    \FSM_sequential_an[0]_i_1 
       (.I0(an__0[0]),
        .I1(\FSM_sequential_an[2]_i_3_n_0 ),
        .I2(an__0[0]),
        .O(\FSM_sequential_an[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \FSM_sequential_an[1]_i_1 
       (.I0(an__0[0]),
        .I1(an__0[1]),
        .I2(\FSM_sequential_an[2]_i_3_n_0 ),
        .I3(an__0[1]),
        .O(\FSM_sequential_an[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_an[2]_i_10 
       (.I0(clk_cnt[29]),
        .I1(clk_cnt[28]),
        .I2(clk_cnt[31]),
        .I3(clk_cnt[30]),
        .O(\FSM_sequential_an[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_an[2]_i_11 
       (.I0(clk_cnt[21]),
        .I1(clk_cnt[20]),
        .I2(clk_cnt[23]),
        .I3(clk_cnt[22]),
        .O(\FSM_sequential_an[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFF780078)) 
    \FSM_sequential_an[2]_i_2 
       (.I0(an__0[1]),
        .I1(an__0[0]),
        .I2(an__0[2]),
        .I3(\FSM_sequential_an[2]_i_3_n_0 ),
        .I4(an__0[2]),
        .O(\FSM_sequential_an[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_an[2]_i_3 
       (.I0(\FSM_sequential_an[2]_i_4_n_0 ),
        .I1(\FSM_sequential_an[2]_i_5_n_0 ),
        .I2(\FSM_sequential_an[2]_i_6_n_0 ),
        .I3(\FSM_sequential_an[2]_i_7_n_0 ),
        .O(\FSM_sequential_an[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \FSM_sequential_an[2]_i_4 
       (.I0(clk_cnt[10]),
        .I1(clk_cnt[11]),
        .I2(clk_cnt[9]),
        .I3(clk_cnt[8]),
        .I4(\FSM_sequential_an[2]_i_8_n_0 ),
        .O(\FSM_sequential_an[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_sequential_an[2]_i_5 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[1]),
        .I4(\FSM_sequential_an[2]_i_9_n_0 ),
        .O(\FSM_sequential_an[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_an[2]_i_6 
       (.I0(clk_cnt[26]),
        .I1(clk_cnt[27]),
        .I2(clk_cnt[24]),
        .I3(clk_cnt[25]),
        .I4(\FSM_sequential_an[2]_i_10_n_0 ),
        .O(\FSM_sequential_an[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \FSM_sequential_an[2]_i_7 
       (.I0(clk_cnt[18]),
        .I1(clk_cnt[19]),
        .I2(clk_cnt[16]),
        .I3(clk_cnt[17]),
        .I4(\FSM_sequential_an[2]_i_11_n_0 ),
        .O(\FSM_sequential_an[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_an[2]_i_8 
       (.I0(clk_cnt[13]),
        .I1(clk_cnt[12]),
        .I2(clk_cnt[15]),
        .I3(clk_cnt[14]),
        .O(\FSM_sequential_an[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_sequential_an[2]_i_9 
       (.I0(clk_cnt[5]),
        .I1(clk_cnt[4]),
        .I2(clk_cnt[7]),
        .I3(clk_cnt[6]),
        .O(\FSM_sequential_an[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "digit1:000,digit2:001,digit3:010,digit4:011,digit5:100,digit6:101,digit7:110,digit8:111," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_an_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_an[0]_i_1_n_0 ),
        .Q(an__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "digit1:000,digit2:001,digit3:010,digit4:011,digit5:100,digit6:101,digit7:110,digit8:111," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_an_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_an[1]_i_1_n_0 ),
        .Q(an__0[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "digit1:000,digit2:001,digit3:010,digit4:011,digit5:100,digit6:101,digit7:110,digit8:111," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_an_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_an[2]_i_2_n_0 ),
        .Q(an__0[2]),
        .R(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(an__0[1]),
        .I1(an__0[2]),
        .I2(an__0[0]),
        .O(an_OBUF[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(an__0[1]),
        .I1(an__0[2]),
        .I2(an__0[0]),
        .O(an_OBUF[1]));
  LUT3 #(
    .INIT(8'hEF)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(an__0[2]),
        .I1(an__0[0]),
        .I2(an__0[1]),
        .O(an_OBUF[2]));
  LUT3 #(
    .INIT(8'hF7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(an__0[1]),
        .I1(an__0[0]),
        .I2(an__0[2]),
        .O(an_OBUF[3]));
  LUT3 #(
    .INIT(8'hEF)) 
    \an_OBUF[4]_inst_i_1 
       (.I0(an__0[1]),
        .I1(an__0[0]),
        .I2(an__0[2]),
        .O(an_OBUF[4]));
  LUT3 #(
    .INIT(8'hF7)) 
    \an_OBUF[5]_inst_i_1 
       (.I0(an__0[2]),
        .I1(an__0[0]),
        .I2(an__0[1]),
        .O(an_OBUF[5]));
  LUT3 #(
    .INIT(8'hF7)) 
    \an_OBUF[6]_inst_i_1 
       (.I0(an__0[1]),
        .I1(an__0[2]),
        .I2(an__0[0]),
        .O(an_OBUF[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \an_OBUF[7]_inst_i_1 
       (.I0(an__0[2]),
        .I1(an__0[0]),
        .I2(an__0[1]),
        .O(an_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt[0]),
        .O(clk_cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[10]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[12]_i_2_n_6 ),
        .O(clk_cnt_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[11]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[12]_i_2_n_5 ),
        .O(clk_cnt_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[12]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[12]_i_2_n_4 ),
        .O(clk_cnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[13]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[16]_i_2_n_7 ),
        .O(clk_cnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[14]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[16]_i_2_n_6 ),
        .O(clk_cnt_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[15]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[16]_i_2_n_5 ),
        .O(clk_cnt_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[16]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[16]_i_2_n_4 ),
        .O(clk_cnt_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[17]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[20]_i_2_n_7 ),
        .O(clk_cnt_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[18]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[20]_i_2_n_6 ),
        .O(clk_cnt_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[19]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[20]_i_2_n_5 ),
        .O(clk_cnt_0[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[1]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[4]_i_2_n_7 ),
        .O(clk_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[20]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[20]_i_2_n_4 ),
        .O(clk_cnt_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[21]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[24]_i_2_n_7 ),
        .O(clk_cnt_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[22]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[24]_i_2_n_6 ),
        .O(clk_cnt_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[23]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[24]_i_2_n_5 ),
        .O(clk_cnt_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[24]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[24]_i_2_n_4 ),
        .O(clk_cnt_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[25]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[28]_i_2_n_7 ),
        .O(clk_cnt_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[26]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[28]_i_2_n_6 ),
        .O(clk_cnt_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[27]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[28]_i_2_n_5 ),
        .O(clk_cnt_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[28]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[28]_i_2_n_4 ),
        .O(clk_cnt_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[29]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[31]_i_2_n_7 ),
        .O(clk_cnt_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[2]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[4]_i_2_n_6 ),
        .O(clk_cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[30]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[31]_i_2_n_6 ),
        .O(clk_cnt_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[31]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[31]_i_2_n_5 ),
        .O(clk_cnt_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[3]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[4]_i_2_n_5 ),
        .O(clk_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[4]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[4]_i_2_n_4 ),
        .O(clk_cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[5]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[8]_i_2_n_7 ),
        .O(clk_cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[6]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[8]_i_2_n_6 ),
        .O(clk_cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[7]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[8]_i_2_n_5 ),
        .O(clk_cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[8]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[8]_i_2_n_4 ),
        .O(clk_cnt_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[9]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\clk_cnt_reg[12]_i_2_n_7 ),
        .O(clk_cnt_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[0]),
        .Q(clk_cnt[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[10]),
        .Q(clk_cnt[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[11]),
        .Q(clk_cnt[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[12]),
        .Q(clk_cnt[12]),
        .R(SR));
  CARRY4 \clk_cnt_reg[12]_i_2 
       (.CI(\clk_cnt_reg[8]_i_2_n_0 ),
        .CO({\clk_cnt_reg[12]_i_2_n_0 ,\clk_cnt_reg[12]_i_2_n_1 ,\clk_cnt_reg[12]_i_2_n_2 ,\clk_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[12]_i_2_n_4 ,\clk_cnt_reg[12]_i_2_n_5 ,\clk_cnt_reg[12]_i_2_n_6 ,\clk_cnt_reg[12]_i_2_n_7 }),
        .S(clk_cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[13]),
        .Q(clk_cnt[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[14]),
        .Q(clk_cnt[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[15]),
        .Q(clk_cnt[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[16]),
        .Q(clk_cnt[16]),
        .R(SR));
  CARRY4 \clk_cnt_reg[16]_i_2 
       (.CI(\clk_cnt_reg[12]_i_2_n_0 ),
        .CO({\clk_cnt_reg[16]_i_2_n_0 ,\clk_cnt_reg[16]_i_2_n_1 ,\clk_cnt_reg[16]_i_2_n_2 ,\clk_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[16]_i_2_n_4 ,\clk_cnt_reg[16]_i_2_n_5 ,\clk_cnt_reg[16]_i_2_n_6 ,\clk_cnt_reg[16]_i_2_n_7 }),
        .S(clk_cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[17]),
        .Q(clk_cnt[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[18]),
        .Q(clk_cnt[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[19]),
        .Q(clk_cnt[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[1]),
        .Q(clk_cnt[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[20]),
        .Q(clk_cnt[20]),
        .R(SR));
  CARRY4 \clk_cnt_reg[20]_i_2 
       (.CI(\clk_cnt_reg[16]_i_2_n_0 ),
        .CO({\clk_cnt_reg[20]_i_2_n_0 ,\clk_cnt_reg[20]_i_2_n_1 ,\clk_cnt_reg[20]_i_2_n_2 ,\clk_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[20]_i_2_n_4 ,\clk_cnt_reg[20]_i_2_n_5 ,\clk_cnt_reg[20]_i_2_n_6 ,\clk_cnt_reg[20]_i_2_n_7 }),
        .S(clk_cnt[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[21]),
        .Q(clk_cnt[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[22]),
        .Q(clk_cnt[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[23]),
        .Q(clk_cnt[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[24]),
        .Q(clk_cnt[24]),
        .R(SR));
  CARRY4 \clk_cnt_reg[24]_i_2 
       (.CI(\clk_cnt_reg[20]_i_2_n_0 ),
        .CO({\clk_cnt_reg[24]_i_2_n_0 ,\clk_cnt_reg[24]_i_2_n_1 ,\clk_cnt_reg[24]_i_2_n_2 ,\clk_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[24]_i_2_n_4 ,\clk_cnt_reg[24]_i_2_n_5 ,\clk_cnt_reg[24]_i_2_n_6 ,\clk_cnt_reg[24]_i_2_n_7 }),
        .S(clk_cnt[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[25]),
        .Q(clk_cnt[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[26]),
        .Q(clk_cnt[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[27]),
        .Q(clk_cnt[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[28]),
        .Q(clk_cnt[28]),
        .R(SR));
  CARRY4 \clk_cnt_reg[28]_i_2 
       (.CI(\clk_cnt_reg[24]_i_2_n_0 ),
        .CO({\clk_cnt_reg[28]_i_2_n_0 ,\clk_cnt_reg[28]_i_2_n_1 ,\clk_cnt_reg[28]_i_2_n_2 ,\clk_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[28]_i_2_n_4 ,\clk_cnt_reg[28]_i_2_n_5 ,\clk_cnt_reg[28]_i_2_n_6 ,\clk_cnt_reg[28]_i_2_n_7 }),
        .S(clk_cnt[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[29]),
        .Q(clk_cnt[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[2]),
        .Q(clk_cnt[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[30]),
        .Q(clk_cnt[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[31]),
        .Q(clk_cnt[31]),
        .R(SR));
  CARRY4 \clk_cnt_reg[31]_i_2 
       (.CI(\clk_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_clk_cnt_reg[31]_i_2_CO_UNCONNECTED [3:2],\clk_cnt_reg[31]_i_2_n_2 ,\clk_cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_cnt_reg[31]_i_2_O_UNCONNECTED [3],\clk_cnt_reg[31]_i_2_n_5 ,\clk_cnt_reg[31]_i_2_n_6 ,\clk_cnt_reg[31]_i_2_n_7 }),
        .S({1'b0,clk_cnt[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[3]),
        .Q(clk_cnt[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[4]),
        .Q(clk_cnt[4]),
        .R(SR));
  CARRY4 \clk_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\clk_cnt_reg[4]_i_2_n_0 ,\clk_cnt_reg[4]_i_2_n_1 ,\clk_cnt_reg[4]_i_2_n_2 ,\clk_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(clk_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[4]_i_2_n_4 ,\clk_cnt_reg[4]_i_2_n_5 ,\clk_cnt_reg[4]_i_2_n_6 ,\clk_cnt_reg[4]_i_2_n_7 }),
        .S(clk_cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[5]),
        .Q(clk_cnt[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[6]),
        .Q(clk_cnt[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[7]),
        .Q(clk_cnt[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[8]),
        .Q(clk_cnt[8]),
        .R(SR));
  CARRY4 \clk_cnt_reg[8]_i_2 
       (.CI(\clk_cnt_reg[4]_i_2_n_0 ),
        .CO({\clk_cnt_reg[8]_i_2_n_0 ,\clk_cnt_reg[8]_i_2_n_1 ,\clk_cnt_reg[8]_i_2_n_2 ,\clk_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[8]_i_2_n_4 ,\clk_cnt_reg[8]_i_2_n_5 ,\clk_cnt_reg[8]_i_2_n_6 ,\clk_cnt_reg[8]_i_2_n_7 }),
        .S(clk_cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_cnt_0[9]),
        .Q(clk_cnt[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(dp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Digit3_n_0),
        .Q(dp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Digit0_n_0),
        .Q(dp[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module Plaintext_ROM_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra);
  output [7:0]douta;
  input clka;
  input ena;
  input [3:0]addra;

  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;

  Plaintext_ROM_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Plaintext_ROM_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra);
  output [7:0]douta;
  input clka;
  input ena;
  input [3:0]addra;

  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;

  Plaintext_ROM_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Plaintext_ROM_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra);
  output [7:0]douta;
  input clka;
  input ena;
  input [3:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_12 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_13 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ;
  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0200000000010001000002000000010300000101000001000000000300000002),
    .INIT_01(256'h0000000000000003000001020000030000010200000300000102000003000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_4 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_5 ,douta[3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_12 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_13 ,douta[1:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_21 ,douta[7:6],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_29 ,douta[5:4]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ena),
        .ENBWREN(ena),
        .REGCEAREGCE(ena),
        .REGCEB(ena),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module Plaintext_ROM_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra);
  output [7:0]douta;
  input clka;
  input ena;
  input [3:0]addra;

  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;

  Plaintext_ROM_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "4" *) (* C_ADDRB_WIDTH = "4" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "Plaintext_ROM.mem" *) 
(* C_INIT_FILE_NAME = "Plaintext_ROM.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "16" *) (* C_READ_DEPTH_B = "16" *) (* C_READ_WIDTH_A = "8" *) 
(* C_READ_WIDTH_B = "8" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "16" *) (* C_WRITE_DEPTH_B = "16" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module Plaintext_ROM_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [3:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [7:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [3:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Plaintext_ROM_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module Plaintext_ROM_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    ena,
    addra);
  output [7:0]douta;
  input clka;
  input ena;
  input [3:0]addra;

  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;

  Plaintext_ROM_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
