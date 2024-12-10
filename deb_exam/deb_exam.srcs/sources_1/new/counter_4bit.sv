// This counter is designed using register, adder and a multiplexer. 
// Normally we don't use this appraoch as this requires more hardware there a simple counter 
// that adds constant value "1'b1".


//delet "# and )("
module counter_4bit(
    input logic clk,
    input logic reset_n,
    input logic load,
    input logic [3:0] load_data,
    output logic [3:0] count
);
//size next [3:0]
    logic [3:0]next_count;
    assign next_count = load ? (load_data) : (count + 1);


    always @(posedge clk, negedge reset_n)
    begin 
    //sign ~ to reset_n
        if(~reset_n)
            count <= 0;
        else 
            count <= next_count;
    end

endmodule