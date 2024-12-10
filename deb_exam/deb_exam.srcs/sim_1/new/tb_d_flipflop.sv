`timescale 1ns / 1ps

module tb_d_flipflop;
    logic clk; 
    logic D; 
    logic reset_n;
    logic Q;
    logic Qn;
    
    d_flipflop aa(
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
    D=1'b0;#20

    $finish;    
    end 
    
endmodule
