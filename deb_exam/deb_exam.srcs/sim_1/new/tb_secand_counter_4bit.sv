`timescale 1ns / 1ps


module tb_secand_counter_4bit;
    logic clk,reset_n,load;
    logic [3:0] load_data,count;
    
secand_counter_4bit aa(
    .clk(clk),
    .reset_n(reset_n),
    .load(load),
    .load_data(load_data),
    .count(count)
);

    always #5 clk = ~clk;
    
    initial begin
    load=1'b0;
    load_data=4'b0000;
    clk =1'b0;
    reset_n=1'b1;#1
    reset_n=1'b0;#1
    reset_n=1'b1;#1
    
    load =1'b0;#50
    load=1'b1;
    load_data=4'b0000;#50
    load = 1'b1;
    load_data=4'b1000;#50
    $finish;    
    end 
endmodule
