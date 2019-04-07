//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2019 09:41:59 PM
// Design Name: 
// Module Name: PushButton_Left
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


module PushButton_Left
# ( 
    // parameters
    parameter Width = 8
)
(
    input btn_clk,
    input clk,
    input rst,
    input btn,
    output reg [7:0]ciphertext_reg,
    output reg [3:0]address = 4'b0000,
    output reg ready = 1'b0,
    output [7:0] dataout_d_debug,
    output [7:0] debug_2
//    output calculating_flag_debug,
//    output [2:0] counter_debug
    );

reg         btn_flag = 1'b0;
reg         rom_en = 1'b0, encrypt_en = 1'b0;
wire [7:0]  dataout_d;
reg  [7:0]  dataout_q;
wire [7:0]  ciphertext;
reg         i = 1'b0;
reg         calculating_flag = 1'b0;
reg  [2:0]  counter = 3'b000;
reg         address_add_flag = 1'b0;    // Flag to avoid address add twice, 0 is no adding, 1 is already added.
reg         btn_once_flag = 1'b0;       // Flag to make sure the button only work once                  
wire        cal_done;                   // Shown calculation done

//assign rom_en_debug = rom_en; 
//assign counter_debug = counter;
//assign calculating_flag_debug = calculating_flag;

always @(posedge btn_clk or posedge rst)
begin
    if(rst) begin
        btn_flag <= 1'b0;
    end
    else if(btn) begin
        btn_flag <= 1'b1;
    end
//    else if(ready) begin
    else begin
        btn_flag <= 1'b0;
    end
end

always @(posedge clk or posedge rst)
begin
    if(rst) begin
        rom_en <= 1'b0;
        encrypt_en <= 1'b0;
        address <= 4'b0000;
        address_add_flag <= 1'b0;
        ready <= 1'b0;
    end
    else begin
        if(btn_flag) begin
            if(~btn_once_flag) begin
                if(~calculating_flag) begin
                    btn_once_flag <= 1'b1;
                    counter <= 2'b00;
                    calculating_flag <= 1'b1;
                    rom_en <= 1'b1;
                    address_add_flag <= 1'b0;
                // Two clock delay for ROM latency
                end
            end
        end
        else begin
            btn_once_flag <= 1'b0;            
        end
        if(calculating_flag) begin
            counter <= counter + 1;
            if(counter == 3'b101) begin
            dataout_q <= dataout_d;
            end
            if(counter == 3'b111) begin
                rom_en <= 1'b0;
                encrypt_en <= 1'b1;
            end
        end
        if(cal_done) begin
            ready <= 1'b1;
            ciphertext_reg <= ciphertext;
            encrypt_en <= 1'b0;
            calculating_flag <= 1'b0;
            if(~address_add_flag) begin  
                address_add_flag <= 1'b1;
                address <= address + 1; 
            end
        end
        else begin
            ready <= 1'b0;
        end
    end
//    else if(ready) begin
//        ciphertext_reg <= ciphertext;
//        encrypt_en <= 1'b0;
//        i = ~i;
//        calculating_flag = 1'b0;
//        i = ~i;
//    end
end

// Instantiate ROM module
Plaintext_ROM P_ROM (
    .clka(clk),    // input wire clka
    .ena(rom_en),      // input wire ena
    .addra(address),  // input wire [3 : 0] addra
    .douta(dataout_d)  // output wire [7 : 0] douta
);

// Instantiate encrpytion module
encrpytion encrypt(
    .clk(clk),
    .rst(rst),
    .en(encrypt_en),
    .a(dataout_q),
    .n(55),
    .e(23),
    .cipher(ciphertext),
    .ready_flag(cal_done),
    .debug_1(dataout_d_debug),
    .debug_2(debug_2)
);

endmodule
