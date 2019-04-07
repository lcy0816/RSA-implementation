`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2019 05:15:28 PM
// Design Name: 
// Module Name: PushButton_Right
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


module PushButton_Right #(
parameter DATASIZE = 8
)
(
    input btn_clk,
    input clk,
    input rst,
    input btn,
    input [DATASIZE-1:0] data_in,
    output TxD,
    output reg load_data = 1'b0,
    output reg [3:0] address = 4'b0000,
    output reg [7:0] debug1=0, debug2
    );
    
// Parameter Declare 
parameter ONE   = 8'b00110001;
parameter ZERO  = 8'b00110000;
parameter SPACE = 8'b00100000;
parameter UNDERLINE = 8'b01011111;

reg btn_flag = 1'b0;
reg [3:0] bitcounter = 0;
reg btn_once_flag = 1'b0;
reg ready = 0;
reg [2:0] counter = 0;
reg transmit = 1'b0, transmit_start = 1'b0;
reg [2:0] p_state, n_state;
reg [DATASIZE-1:0] data;
reg [7:0] data_trans;
wire [7:0] data_trans_q;
wire data_update;

reg [32:0]counter_1 =0; 
reg debug_flag_1 = 0, debug_flag_2 = 0;
wire debug_clear;
reg update_1 = 0, update_2 = 0;
reg addr_update_flag;


assign data_trans_q = data_trans;

always @(posedge btn_clk or posedge rst)
begin
    if(rst) begin
        btn_flag <= 1'b0;
    end
    else begin
        if(btn) begin
            btn_flag <= 1'b1;
        end
        else if(ready) begin
                btn_flag <= 1'b0;
        end
    end
end

always @(posedge clk or posedge rst)
begin
    if(rst) begin
        address <= 4'b0000;
        n_state <= 2'b00;
        load_data <= 1'b0;
        ready <= 1'b0;
        transmit <= 1'b0;
        bitcounter <= 0;
        addr_update_flag <= 0;
    end
    else begin
        if(btn_flag) begin
            debug1 <= bitcounter; 
            debug2[0] <= update_1;
            debug2[1] <= update_2;
//            if(data_update) begin
//                if(~debug_flag_1) update_1 <= 1;
//                else update_1 <=0;
//            end
//            else update_1 <= 0;
            if(debug_clear) begin
                if(~debug_flag_2) update_2 <= 1;
                else update_2 <=0;
            end
            else update_2 <= 0;
            case(p_state)
                3'b000: begin
                    if(~btn_once_flag) begin
                        btn_once_flag <= 1'b1;
                        ready <= 1'b0;
                        load_data <= 1'b1;
                        counter <= 0;
                        address <= 4'b0000;
                        bitcounter <= 0;
                        addr_update_flag <=0;
                        // transmit_start <= 1'b1;        
                        n_state <= 3'b001;  
                    end
                    else begin
                        n_state <= 3'b000;
                    end
                end
                3'b001: begin
                    addr_update_flag <= 0;
                    case(counter)
                        2: begin
                            data <= data_in;
                            counter <= counter + 1;
                            n_state <= 3'b001;
                        end
                        3: begin
                            counter <= 0;
                            n_state <= 3'b010;                    
                        end
                        default: begin
                            counter <= counter + 1;
                            n_state <= 3'b001;
                        end
                    endcase
                end
                3'b010: begin
                    case(bitcounter)
                        0: begin if(data[7]) data_trans <= ONE; else data_trans <= ZERO; n_state <= 3'b011; end
                        1: begin if(data[6]) data_trans <= ONE; else data_trans <= ZERO; n_state <= 3'b011; end
                        2: begin if(data[5]) data_trans <= ONE; else data_trans <= ZERO; n_state <= 3'b011; end
                        3: begin if(data[4]) data_trans <= ONE; else data_trans <= ZERO; n_state <= 3'b011; end
                        4: begin data_trans <= UNDERLINE; n_state <= 3'b011; end
                        5: begin if(data[3]) data_trans <= ONE; else data_trans <= ZERO; n_state <= 3'b011; end
                        6: begin if(data[2]) data_trans <= ONE; else data_trans <= ZERO; n_state <= 3'b011; end
                        7: begin if(data[1]) data_trans <= ONE; else data_trans <= ZERO; n_state <= 3'b011; end
                        8: begin if(data[0]) data_trans <= ONE; else data_trans <= ZERO; n_state <= 3'b011; end
                        9: begin data_trans <= SPACE; n_state <= 3'b011; end
                        default: begin data_trans <= SPACE; n_state <= 3'b011; end
                    endcase
                end
                3'b011: begin
                    if(address >=15) begin
                        n_state <= 3'b100;
                    end
//                    if(address >= 15) begin
//                        transmit <= 0;
//                        ready <= 1;
//                        n_state <= 3'b100;
//                    end
//                    else begin
//                        transmit <= 1;
                       else if(update_2) begin
                            if(bitcounter >= 10) begin
                                debug_flag_2 <= 1;
                                transmit <= 0;
                                bitcounter <= 0;
                                counter <= 0;
                                address <= address + 1;
                                n_state <= 3'b101;
                                addr_update_flag <= 1;
                            end
                            else begin
                                debug_flag_2 <= 1;
                                transmit <= 0;
                                bitcounter <= bitcounter + 1;
                                n_state <= 3'b101;
                            end
                        end
                        else begin
                            transmit <= 1;
                            n_state <= 3'b011;
                        end
                    end
//                end
                3'b100: begin
                    transmit <= 0;
                    address <= 0;
                    n_state <= 3'b100;
                    ready <= 1;                  
                end
                3'b101: begin
                    if(~debug_clear) begin
                        debug_flag_2 <= 0;
                        if(addr_update_flag) begin
                            n_state <= 3'b001;
                        end
                        else begin
                            n_state <= 3'b010;
                        end
                    end
                    else begin
                        n_state <= 3'b101;
                    end
                end
                default: n_state <= 3'b000;
            endcase
        end
        else begin
            btn_once_flag <= 1'b0;
            n_state <= 3'b000;
        end
    end
end

always @(posedge clk or posedge rst)
begin
    if(rst) begin
        p_state <= 3'b000;
    end
    else begin
        p_state <= n_state; //previous state change to next state
    end
end

transmitter trans_1 (
    .clk(clk),
    .reset(rst),
    .transmit(transmit),
    .data(data_trans_q),
//    .loadnext(data_update),
    .clear(debug_clear),
    .TxD(TxD)
);

endmodule
