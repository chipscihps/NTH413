`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/05 14:54:12
// Design Name: 
// Module Name: reflextable
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


module reflextable(x, A);

input [1:5] x;
output [1:5] A;

assign A[1] = !x[1]&x[2]&!x[3]&x[5]|x[2]&x[3]&x[4]|x[1]&!x[2]&!x[3]&x[5]|x[1]&!x[3]&x[4]|x[1]&x[3]&!x[4]&!x[5]|x[1]&x[4]&x[5]|x[1]&x[2]&!x[5];
assign A[2] = !x[1]&!x[2]&x[4]&!x[5]|x[2]&!x[3]&x[4]&x[5]|x[1]&!x[2]&!x[3]&!x[4]&!x[5]|x[1]&x[2]&x[5]|!x[1]&!x[2]&x[3]&!x[4]|x[1]&x[3]&x[4]|x[1]&x[3]&x[5];
assign A[3] = x[2]&!x[3]&!x[5]|x[2]&x[3]&x[5]|!x[1]&!x[3]&!x[4]&x[5]|!x[1]&!x[2]&x[4]&!x[5]|!x[2]&x[3]&x[4]&!x[5]|x[1]&!x[2]&!x[3]&!x[4];
assign A[4] = x[2]&x[3]&!x[4]|x[2]&x[3]&x[5]|x[1]&!x[3]&x[4]|x[1]&x[4]&!x[5]|x[1]&x[2]|!x[1]&!x[2]&!x[4]&x[5]|!x[2]&!x[3]&!x[4]&!x[5];
assign A[5] = !x[1]&!x[2]&!x[3]&!x[4]|!x[1]&!x[2]&x[3]&x[4]|x[2]&!x[3]&x[4]|x[1]&x[4]&!x[5]|x[1]&x[3]&!x[4]|x[1]&x[2]|x[2]&!x[3]&x[5];

endmodule