`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2019 05:19:53 PM
// Design Name: 
// Module Name: PushButton_Up
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

module PushButton_Up #(
    parameter DATAWIDTH = 8,
    parameter DATADEPTH = 16
)
( 
    input btn_clk,          // Button Clock
    input clk,              // Main Clock
    input rst,              // Reset
    input btn,              // Button input 
    output reg [20:0] address = 0, // address - 1 is the real address for the operation
    output reg operation                // if operation is 1, take the action
    ); 

reg     btn_flag;
reg     btn_once_flag = 1'b0;       // Flag to make sure the button only work once 
   
always @(posedge btn_clk or posedge rst) 
begin 
    if(rst) begin 
        btn_flag <= 1'b0; 
    end 
    else begin 
        if(btn) begin 
            btn_flag <= 1'b1; 
        end 
        else begin 
            btn_flag <= 1'b0; 
        end 
    end
end 


always @(posedge clk or posedge rst) 
begin 
    if(rst) begin 
        address <= 0; 
        operation <= 1'b0;
        btn_once_flag <= 1'b0;
    end 
    else begin 
        if(btn_flag) begin 
            if(~btn_once_flag) begin 
                btn_once_flag <= 1'b1;
                if(address >= DATADEPTH -1) begin
                    address <= 0;
                end
                else begin
                    address <= address + 1;
                end
                operation <= 1'b1;              // operation is 1, take the action
            end
            else begin
                address <= address;
            end
        end
        else begin
            btn_once_flag <= 1'b0;
            operation <= 1'b0;                  // operation is 0, disable
        end
    end
end

endmodule 