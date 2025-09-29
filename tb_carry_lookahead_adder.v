`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2025 11:52:45
// Design Name: 
// Module Name: tb_carry_lookahead_adder
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

module tb_carry_lookahead_adder();
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] S;
    wire Cout;

    carry_lookahead_adder UUT(
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        // Case 1: 5 + 7 + 0 = 12 (0101 + 0111 + 0)
        A = 4'b0101;
        B = 4'b0111;
        Cin = 1'b0;
        #10;

        // Case 2: 9 + 6 + 0 = 15 (1001 + 0110 + 0)
        A = 4'b1001;
        B = 4'b0110;
        Cin = 1'b0;
        #10;
        
        // Case 3: 15 + 1 + 0 = 16 (1111 + 0001 + 0)
        A = 4'b1111;
        B = 4'b0001;
        Cin = 1'b0;
        #10;

        // Case 4: 8 + 8 + 1 = 17 (1000 + 1000 + 1)
        A = 4'b1000;
        B = 4'b1000;
        Cin = 1'b1;
        #10;

        // Case 5: 0 + 0 + 0 = 0
        A = 4'b0000;
        B = 4'b0000;
        Cin = 1'b0;
        #10;

        $finish; // Stops the simulation
    end
endmodule
