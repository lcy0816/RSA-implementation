//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2019 08:54:57 PM
// Design Name: 
// Module Name: encryption
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

module encrpytion       //	Modular Exponentiation
    # (parameter k = 8)(
    input clk,              // Clock for the module
    input rst,              // Reset Signal
    input en,               // Enable Signal
    input [k-1:0]a,         // The plaintext
    input [63:0]n,       // The modulus
    input [k-1:0]e,           // The exponentiation number
    output reg [k-1:0]cipher = 0,   // Output - Ciphertext
    output reg ready_flag = 1'b0,   // Flag to indicate the calculation is done, ready for be updated to a higher level module or next module
    output [k-1:0]debug_1,debug_2   // Output signal only for debugging
    );

reg [2*k-1:0]   a1 = 0;         // A factor variable for calculation 
reg [63:0]   n1 = 0;         // A copy of modulus
reg [2*k-1:0]   c = 0;          // A middle stage variable to save the temporal calculate result
reg [2*k-1:0]   b = 0;          // A factor variable for calculation, start with a duplicate of a
reg [2*k-1:0]   x = 0;          // Duplicate of m2
reg [2*k-1:0]   y = 0;          // Duplicate of a

reg [k:0]       i;
reg [3:0]       p_state = 3'b000, n_state = 3'b000;
reg [1:0]       counter = 0;
reg             update_flag = 1'b0;     // Flag for update, finite-state machine only update state when flag set to 1

// Debug Part
integer kk, gg;     // Debug counter
integer g = 0;      // Debug integer
reg [7:0]debug = 0;
assign debug_1 = cipher;
assign debug_2 = debug;
//for(kk=0;kk<10;kk=kk+1) begin
//    gg = gg+1;
//end


always @(posedge clk or posedge rst)	
begin
    if(rst) begin           // Reset all variable when reset input goes high
        ready_flag = 1'b0;
        c = 0;
        a1 = 0;
        n1 = 0;
        x = 0;
        y = 0;
        b = 0;
        i = 0;
        n_state = 3'b000;
    end
    else if(en) begin
        if(update_flag) begin
            case(p_state)
                3'b000: begin			    // Initializing temporory variables
                        debug = 0;
                        g = 0;
                        a1 = a;
                        gg = 0;
                        n1 = n;
                        y = a1;	// $display("Message M is %d", y);
                        b = a1;
                        i = ((e-1)/2);
                        n_state = 3'b001;
                        end
                3'b001: begin               // Check what stage the calculation in is now. (End, or processing)
                            if(b > 0) begin
                                n_state = 3'b011;
                                debug[g] = 1'b1;
                                g = g+1;
                            end
                            else begin   
                                if(i==0) begin
                                    n_state = 3'b100;        ////    we got the result here    ////
                                end
                                else begin
                                    i = i-1;
                                    n_state = 3'b010;
                                end
                            end
                        end
                3'b010: begin	             // Check if the calculation is on the second i, the last i or the rest i
                        if(i==0) begin
                            a1=y;
                            b=c;
                            n_state = 3'b001;
    //                        c = 0;
                        end
                        else begin
                            if(i == (((e-1)/2)-1)) begin
                                x=c;
                                a1=c;
                                b=c;
    //                            c=0;
                                n_state = 3'b001;
                            end
                            else begin
                                a1=x;
                                b=c;
    //                            c=0;
                                n_state = 3'b001;
                            end
                        end	
                        c = 0;
                        end
                3'b011: begin 			       // Modular Multiplication Logic
                        if((b & 1)!=0) begin				
                            c = c + a1;
                            if(c >= n1) begin
                                c = c - n1;
                            end 		
                        end
                        a1 = a1 << 1;
                        if(a1 >= n1) begin
                            a1 = a1 - n1;
                        end
                        b = b >> 1; 
                        n_state = 3'b001;					
                        end	
                3'b100: begin                   // End state, assign value to output cipher, active the ready flag
                        cipher = c; // $display("Cipher text C is %d", c);
                        ready_flag = 1'b1;
                        end
        
                default: n_state = 3'b000;
            endcase
        end
    end
    else begin          // Initialize all variable when enable signal goes low
        ready_flag = 1'b0;
        c = 0;
        a1 = 0;
        n1 = 0;
        x = 0;
        y = 0;
        b = 0;
        i = 0;
        n_state = 3'b000;
    end
end

// State machine, setup the counter to avoid mistake (long calculating process may cost more than one clock cycle)
always @(posedge clk or posedge rst)
begin
	if(rst) begin
	   p_state <= 3'b000;
	end
	else begin
        if(counter == 1) begin
            p_state <= n_state;
            counter <= 0;
            update_flag <= 1'b1;        // Flag for update, finite-state machine only update state when flag set to 1
        end
        else begin
            counter <= counter + 1;
            update_flag <= 1'b0;        // Flag for update, finite-state machine only update state when flag set to 1
        end
    end
end			

endmodule


	






