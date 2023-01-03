`include "define.v"
// ALU module
// Combinational Logical Circuits
// add sub and or not
module alu(
    input wire[`NumLen:0] num1_i,
    input wire[`NumLen:0] num2_i,
    input wire[2:0] op_i,

    output wire[`NumLen:0] ans_o
    );

    always @(*) begin
        case(op_i)
            `ADD: begin
                ans_o = num1_i + num2_i;
            end
            `SUB: begin
                ans_o = num1_i - num2_i;
            end
            `AND: begin
                ans_o = num1_i & num2_i;
            end
            `OR: begin
                ans_o = num1_i | num2_i;
            end
            `NOT: begin
                ans_o = ~num1_i;
            end
        endcase
    end

endmodule
