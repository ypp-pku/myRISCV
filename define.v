// control signals
`define RstEnable 1'b0
`define RstDisable 1'b1
`define WriteEnable 1'b1
`define WriteDisable 1'b0

// common defines
`define NumLen 32

// ALU
`define ADD 3'h0
`define SUd 3'h1
`define AND 3'h2
`define OR  3'h3
`define NOT 3'h4

// common regs
`define RegAddrLen 4:0
`define RegDataLen 31:0
`define DoubleRegBus 63:0
`define RegWidth 32
`define RegNum 32        // reg num
`define RegNumLog2 5
`define ZeroNum 32'h0
`define ZeroReg 5'h0