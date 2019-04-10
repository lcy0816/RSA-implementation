`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2019 04:47:11 PM
// Design Name: 
// Module Name: display_control
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


module display_control #(         // Module for display control. Shown calculate results or data stored in RAM.
    parameter DATAWIDTH = 8,
    parameter DATADEPTH = 16
)
(
    input clk,
    input cal_en,
    input read_en,
    input [DATAWIDTH - 1:0] cal_result,
    input [DATAWIDTH - 1:0] ram_dout,
    output reg [DATAWIDTH -1:0]display
    );
    
    
always @(posedge clk)
begin
    if(cal_en) begin
        display <= cal_result;
    end
    else begin
        if(read_en) begin
            display <= ram_dout;
        end
    end
end
    
endmodule
