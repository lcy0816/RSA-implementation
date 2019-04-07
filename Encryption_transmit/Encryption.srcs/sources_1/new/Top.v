//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2019 08:24:23 PM
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Top (
	input 				clk,                 	// 100MHz clock from on-board oscillator
	input				btnCpuReset,			// red pushbutton input 
	input               btnL, btnU, btnR,
	output 	[6:0]		seg,					// Seven segment display cathode pins
	output              dp,
	output	[7:0]	    an,						// Seven segment display anode pins	
	output  [15:0]      led,
    output              uart_rtl_txd
); 

	// parameter
	parameter SIMULATE = 0;

	// internal variables
	wire				sysclk;							// 100MHz clock from on-board oscillator	
	wire				sysreset;						// system reset signal - asserted high to force reset
	
	wire	[7:0]		segs_int;						// seven segment display segments
	wire				clk_1Hz,clk_10Hz;				// 1HZ clock to drive the counter. 4HZ clock to drive the button
	wire    [7:0]       count_out;                      // 4-bit decade counter output
    wire    [3:0]       din_address, dout_dis_address, dout_trans_address, ram_address;
	wire 	[7:0]		decpts = {7'b0000000, clk_1Hz};	// dp0 is toggled by clk_100Hz 
//    wire    [7:0]       rom_draw_out;
//    wire                seg_update_flag;
//    wire                read_enable, write_enable, ram_enable;
//    wire                re_flag, we_flag, we_signal;
    wire    [7:0]       encrypted_data, ram_dout, display_data;
    
    wire                ram_r_en_dis, ram_r_en_trans, ram_write_en;
    wire                ram_en, ram_write_or_read;              // Enable signal for RAM

	// global assigns
	assign	sysclk = clk;
	assign 	sysreset = ~btnCpuReset;					// btnCpuReset is asserted low	
	assign dp = segs_int[7];							// multiplexed decimal points and segments
	assign seg = segs_int[6:0];							// produced by the Seven Segment display driver
//    assign we_signal = re_flag | we_flag;               // write signal depend on both read flag and write flag
//    assign ram_enable = read_enable | write_enable;     // enable signal for RAM

    
    // instantiate the clock divider
   clk_divider
     #(
        .CLK_INPUT_FREQ_HZ(32'd100_000_000),
        .TICK_OUT_FREQ_HZ(1),
        . SIMULATE(SIMULATE)
     ) CLKDIV1
     (
        .clk(sysclk),
        .reset(sysreset),
        .tick_out(clk_1Hz) 
     );
     
   clk_divider
    #(
        .CLK_INPUT_FREQ_HZ(32'd100_000_000),
        .TICK_OUT_FREQ_HZ(10),
        . SIMULATE(SIMULATE)
    ) CLKDIV2
    (
        .clk(sysclk),
        .reset(sysreset),
        .tick_out(clk_10Hz) 
    );
   
    
    // Instantiate Left PushButton module
    PushButton_Left pushbtn_l(
        .btn_clk(clk_10Hz),
        .clk(sysclk),
        .rst(sysreset),
        .btn(btnL),
        .ciphertext_reg(encrypted_data),
        .address(din_address),
        .ready(ram_write_en),
        .dataout_d_debug(),
        .debug_2()
    );
    
    PushButton_Up pushbtn_u(
        .btn_clk(clk_10Hz),
        .clk(sysclk),
        .rst(sysreset),
        .btn(btnU),
        .address(dout_dis_address),
        .operation(ram_r_en_dis)
    );
    
    PushButton_Right pushbtn_r(
        .btn_clk(clk_10Hz),
        .clk(sysclk),
        .rst(sysreset),
        .btn(btnR),
        .data_in(ram_dout),
        .TxD(uart_rtl_txd),
        .load_data(ram_r_en_trans),
        .address(dout_trans_address),
        .debug1(led[7:0]),
        .debug2(led[15:8])
    );
    
    // Instantiate RAM IP and its enable control module
    C_RAM_control c_ram_control(
        .clk(sysclk),
        .rst(sysreset),
        .write_ram(ram_write_en),
        .read_ram_1(ram_r_en_dis),
        .read_ram_2(ram_r_en_trans),
        .write_address(din_address),
        .read_address_1(dout_dis_address),
        .read_address_2(dout_trans_address),
        .op_address(ram_address),
        .ram_en(ram_en),
        .ram_w_or_r(ram_write_or_read)
    );
    
    Ciphertext_RAM C_RAM (
        .clka(sysclk),    // input wire clka
        .ena(ram_en),      // input wire ena
        .wea(ram_write_or_read),      // input wire [0 : 0] wea
        .addra(ram_address),  // input wire [3 : 0] addra
        .dina(encrypted_data),    // input wire [7 : 0] dina
        .douta(ram_dout)  // output wire [7 : 0] douta
    );
    
//    // Instantiate Data address module
//    ReadData (
//        .clk(clk_4Hz),
//        .rst(sysreset),
//        .btn_u(btnU),
//        .address(rom_address),
//        .update_flag_1(we_flag),   // Write flag to RAM
//        .update_flag_2(write_enable) // Write enable flag to RAM
//    );   
    
//    // Instantiate Button 2 module
//    button2 (
//        .clk(clk_4Hz),
//        .rst(sysreset),
//        .btn(btnD),
//        .update_flag_1(re_flag),   // Read flag to RAM
//        .update_flag_2(read_enable) // Read enable flag to RAM
//    );
   
    
//    // Instantiate Memory
//    dist_mem_gen_0 DMemory (
//      .a(rom_address),      // input wire [3 : 0] a
//      .spo(rom_draw_out)  // output wire [7 : 0] spo
//    );
    

    // instatiate the display content
    display_control dis_control (
        .clk(sysclk),
        .cal_en(ram_write_en),
        .read_en(ram_r_en_dis),
        .cal_result(encrypted_data),
        .ram_dout(ram_dout),
        .display(display_data)
    );
    

	// instantiate the 7-segment, 8-digit display
	sevensegment
	#(
		.RESET_POLARITY_LOW(0),
		.SIMULATE(SIMULATE)
	) SSB
	(
		// inputs for control signals
		// 5'b11111 is the code for blank
		.d0({4'b0000, display_data[0]}),
		.d1({4'b0000, display_data[1]}),
 		.d2({4'b0000, display_data[2]}),
		.d3({4'b0000, display_data[3]}),
		.d4({4'b0000, display_data[4]}),
		.d5({4'b0000, display_data[5]}),
		.d6({4'b0000, display_data[6]}),
		.d7({4'b0000, display_data[7]}),
		.dp(decpts),
		
		// outputs to seven segment display
		.seg(segs_int),			
		.an(an),
		
		// clock and reset signals (100 MHz clock, active high reset)
		.clk(sysclk),
		.reset(sysreset),
		
		// ouput for simulation only
		.digits_out()
	);
	
	endmodule
