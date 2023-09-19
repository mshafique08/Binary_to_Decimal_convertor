`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2023 03:08:39 PM
// Design Name: 
// Module Name: project_BCD
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


module project_BCD
  (
   
   input [3:0] Binary_Num,
   output [7:0] an,
   output dp,
   output [6:0] con_out
   
   );

  assign an = 8'b1111110;  
  assign dp = 1;
  
  always @(*)
    begin
      case(Binary_Num)
        4'b0000 : con_out = 7'b0000001;
        4'b0001 : con_out = 7'b1001111;
        4'b0010 : con_out = 7'b0010010;
        4'b0011 : con_out = 7'b0000110;          
        4'b0100 : con_out = 7'b1001100;
        4'b0101 : con_out = 7'b0100100;
        4'b0110 : con_out = 7'b0100000;
        4'b0111 : con_out = 7'b0001111;
        4'b1000 : con_out = 7'b0000000;
        4'b1001 : con_out = 7'b0000100;  
        4'b1010 : con_out = 7'bxxxxxxx;  
        4'b1010 : con_out = 7'bxxxxxxx; 
        4'b1100 : con_out = 7'bxxxxxxx; 
        4'b1101 : con_out = 7'bxxxxxxx; 
        4'b1110 : con_out = 7'bxxxxxxx; 
        4'b1111 : con_out = 7'bxxxxxxx; 
        
      endcase
    end 


endmodule
