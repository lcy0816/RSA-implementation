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
parameter DATAWIDTH = 8,
parameter DATADEPTH = 16
)
(
    input btn_clk,          // Button Clock
    input clk,              // Main Clock
    input rst,              // Reset
    input btn,              // Button input 
    input [DATAWIDTH-1:0] data_in,      // Transfered data
    output TxD,             // TxD signal
    output reg load_data = 0,            // Signal to notice RAM to load a new number to transfer. Active high. 
    output reg [20:0] address = 0,    // Address of the load number. 21 bits address could handle upto a memory blobk with 2097152 numbers
    output reg [7:0] debug1=0, debug2       // Debug signal
    );
    
// Local Parameter Declare 
parameter ONE   = 8'b00110001;
parameter ZERO  = 8'b00110000;
parameter SPACE = 8'b00100000;
parameter UNDERLINE = 8'b01011111;


reg btn_flag = 1'b0;                // Button Flag indicated the button pressed, active high.
reg [12:0] bitcounter = 0;          // Counter to indicate currently bit of data that is transferring, 13 bit counter could handle upto 8096 bits data
reg btn_once_flag = 1'b0;           // Flag to avoid button debounce
reg ready = 0;                      // Flag to indicate the transfer process is done
reg [2:0] counter = 0;              // Counter to set a two clock delay for the RAM latency
reg transmit = 1'b0;                // Enable signal for transmitter module, active high
reg [2:0] p_state, n_state;         // Present state and Next state
reg [DATAWIDTH-1:0] data;           // Temporary registers to hold the transferred data
reg [7:0] data_trans;               // Registers to hold a bit of transferred data in ASCII code
wire [7:0] data_trans_q;            // Output nets of data_trans  
reg update = 0;                     // Flag to indicate the previous bit transfer is done, going next one.
reg addr_update_flag;               // Flag to indicated the address of load data need to be update, active high

reg debug_flag_2 = 0;     // Debug flag
wire clear;                         // Clear signal from transmitter module, showing that the data has transferred.


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
            debug2[1] <= update;
            if(clear) begin
                if(~debug_flag_2) update <= 1;
                else update <=0;
            end
            else update <= 0;
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
                    if(bitcounter == DATAWIDTH) begin
                        data_trans <= SPACE;
                    end
                    else begin
                        if(data[DATAWIDTH-1]) begin
                            data_trans <= ONE;
                        end
                        else begin
                            data_trans <= ZERO;
                        end
                    end
                    n_state <= 3'b011;
                end
                3'b011: begin
                    if(address >= DATADEPTH) begin
                        n_state <= 3'b100;
                    end
//                    if(address >= 15) begin
//                        transmit <= 0;
//                        ready <= 1;
//                        n_state <= 3'b100;
//                    end
//                    else begin
//                        transmit <= 1;
                       else if(update) begin
                            if(bitcounter > DATAWIDTH-1) begin
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
                                data <= data << 1;
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
                    if(~clear) begin
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
    .clear(clear),
    .TxD(TxD)
);

endmodule
