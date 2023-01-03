include "define.v"
// register files
// 2 reads, 1 write
module regs(
    input wire clk,
    input wire rst,
    // input wire[`RegAddrLen] raddr1_i,
    // input wire[`RegAddrLen] raddr2_i,

    // input wire we_i,
    // input wire[`RegAddrLen] waddr_i,
    // input wire[`RegDataLen] wdata_i,

    // from jtag
    input wire jtag_we_i,
    input wire[`RegAddrLen] jtag_addr_i,
    input wire[`RegDataLen] jtag_data_i,

    // output reg[`RegDataLen] rdata1_o,
    // output reg[`RegDataLen] rdata2_o,

    // to jtag
    output reg[`RegDataLen] jtag_data_o
    );

    reg[`RegDataLen] regs[0:`RegNum - 1];

    // read common regs
    always @(*) begin
        if (jtag_addr_i == `ZeroReg) begin
            jtag_data_o = `ZeroWord;
        end else begin
            jtag_data_o = regs[jtag_addr_i];
        end
    end

    // write common regs
    always @(posedge clk) begin
        if (rst == `RstDisable) begin
            if ((jtag_we_i == `WriteEnable) && (jtag_addr_i != `ZeroReg)) begin
                regs[jtag_addr_i] <= jtag_data_i;
            end
        end
    end
endmodule
