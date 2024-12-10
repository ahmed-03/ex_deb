`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:31:59 AM
// Design Name: 
// Module Name: tb_d_latch_asyn_rstn
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


module tb_d_latch_asyn_rstn;
         logic clk;
         logic D;
         logic reset_n;
         logic Q; 
         logic Qn; 

    d_latch_asyn_rstn aa(
        .clk(clk),
        .D(D),
        .reset_n(reset_n),
        .Q(Q), 
        .Qn(Qn)
    );
    
    
     always #5 clk = ~clk;
    
    initial begin
    clk =1'b0;
    D=1'b0;
    reset_n=1'b1;#1
    reset_n=1'b0;#1
    reset_n=1'b1;#1
    
    D=1'b1;#20
    reset_n=1'b0;#1
    D=1'b0;#20

    $finish;    
    end 
endmodule
