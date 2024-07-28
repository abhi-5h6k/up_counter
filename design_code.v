`timescale 1ns / 1ps

module up_counter(
       input clk, rst, //// active high reset
       input ld,
       input [3:0] ldvalue,
       output [3:0] dout
    );
    
    reg [3:0] temp;
    
    initial begin
    temp = 0;
    end
    
    always@(posedge clk)
    begin
      if(rst == 1'b1)
      temp <= 4'b0000;
      else
      
         begin
         if(ld == 1'b1)
         temp <= ldvalue;
         else
         temp <= temp + 1;
         end
    end
    
    assign dout = temp;
    
endmodule
