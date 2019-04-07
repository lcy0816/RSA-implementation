//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2019 11:28:11 PM
// Design Name: 
// Module Name: sim_encryption
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


module sim_encryption(
    );

reg            clk,reset,btnl,btnu,btnr;
wire    [7:0]   segment;
wire            dp;
wire    [7:0]   an;
wire            transmitresult;

Top encrpytion1(
    .clk(clk),
    .btnCpuReset(reset),
    .btnL(btnl),
    .btnU(btnu),
    .btnR(btnr),
    .led(),
    .uart_rtl_txd(transmitresult),
    .seg(segment),
    .dp(dp),
    .an(an)
);

initial
    clk = 1'b0;

always
#5  clk = ~clk;


initial
begin
    #10
    {reset,btnl,btnu,btnr} = 4'b1000;
#10 {reset,btnl,btnu,btnr} = 4'b1000;
//#10 {reset,btn} = 2'b11;
#10 {reset,btnl,btnu,btnr} = 4'b1100;

#100 {reset,btnl,btnu,btnr} = 4'b1000;
#10 {reset,btnl,btnu,btnr} = 4'b1001;
#10 {reset,btnl,btnu,btnr} = 4'b1001;
#10 {reset,btnl,btnu,btnr} = 4'b1000;


#10000000;       
end

endmodule
