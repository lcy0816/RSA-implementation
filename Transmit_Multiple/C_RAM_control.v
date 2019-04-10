`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2019 02:14:12 AM
// Design Name: 
// Module Name: C_RAM_control
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


module C_RAM_control #(
    parameter DATAWIDTH = 8,
    parameter DATADEPTH = 16
)
(
    input clk,
    input rst,
    input write_ram,
    input read_ram_1,
    input read_ram_2,
    input [20:0] write_address, read_address_1, read_address_2,
    output reg [20:0] op_address,
    output reg ram_en,              // Take care here if reg is a problem or not
    output reg ram_w_or_r           // Just follow register in register out rules
    );
    
always @(posedge clk or posedge rst)
begin
    if(rst) begin
        ram_en <= 1'b0;
        ram_w_or_r <= 1'b0;
        op_address <= 0;
    end
    else begin
        if(write_ram) begin
            ram_en <= 1'b1;
            ram_w_or_r <= 1'b1;
            if(write_address == 0) begin
                op_address <= DATADEPTH -1;
            end
            else begin
                op_address <= write_address - 1;
            end
        end
        else begin
            if(read_ram_1) begin
                ram_en <= 1'b1;
                ram_w_or_r <= 1'b0;
                if(read_address_1 == 0) begin
                    op_address <= DATADEPTH - 1;
                end
                else begin
                    op_address <= read_address_1 - 1;
                end
            end
            else begin
                if(read_ram_2) begin
                    ram_en <= 1'b1;
                    ram_w_or_r <= 1'b0;
                    op_address <= read_address_2;
                end
                else begin
                    ram_en <= 1'b0;
                end
            end
        end
    end
end
endmodule
