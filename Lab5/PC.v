module PC(
    input reset, //Use reset to initialize PC. Initial value must be 0
    input clk,
    input PC_control,
    input [31:0] next_pc,  // input
    input is_not_cache_stall,
    output reg [31:0] current_pc   // output
    );
    
    
    always@(posedge clk) begin
        if(reset) current_pc <= 32'b0;
        else begin
            if (PC_control & is_not_cache_stall ) current_pc <= next_pc;
        end
    end
endmodule

