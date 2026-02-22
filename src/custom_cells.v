`timescale 1ns/1ps
`default_nettype none

// ============================================================
// custom_cells.v  (behavioral models of the custom cells)
// ============================================================

// 2:1 mux
module mux2_1 (
    input  wire A,
    input  wire B,
    input  wire S,
    output wire Y
);
    assign Y = S ? B : A;
endmodule

// 2:1 mux with inverted output
module mux2_1_inv (
    input  wire A,
    input  wire B,
    input  wire S,
    output wire Y
);
    assign Y = ~(S ? B : A);
endmodule

// Level-sensitive latch (transparent when EN=1, holds when EN=0)
module latch (
    input  wire D,
    input  wire EN,
    output reg  Q
);
    always @(D or EN) begin
        if (EN)
            Q <= D;
    end
endmodule

// 2:1 mux whose output is latched (transparent when EN=1, holds when EN=0)
module mux2_1_latched (
    input  wire A,
    input  wire B,
    input  wire S,
    input  wire EN,
    output reg  Y
);
    always @(A or B or S or EN) begin
        if (EN)
            Y <= (S ? B : A);
    end
endmodule

// ============================================================
// Comprehensive "test circuit" that uses instances of all cells
// ============================================================
module custom_cells (
    input  wire a,
    input  wire b,
    input  wire c,
    input  wire d,
    input  wire s0,
    input  wire s1,
    input  wire en0,
    input  wire en1,
    output wire y_mux,
    output wire y_mux_inv,
    output wire y_latch,
    output wire y_mux_latched,
    output wire y_final
);
    // combinational muxes
    mux2_1 u_mux0 (
        .A(a), .B(b), .S(s0), .Y(y_mux)
    );

    mux2_1_inv u_mux1 (
        .A(c), .B(d), .S(s0), .Y(y_mux_inv)
    );

    // latched mux: selects between the two mux outputs and latches it on en0
    mux2_1_latched u_latmux (
        .A(y_mux),
        .B(y_mux_inv),
        .S(s1),
        .EN(en0),
        .Y(y_mux_latched)
    );

    // latch the latched-mux output on en1
    latch u_latch0 (
        .D(y_mux_latched),
        .EN(en1),
        .Q(y_latch)
    );

    // a final mux stage to exercise chaining (select between latched and direct)
    mux2_1 u_mux2 (
        .A(y_latch),
        .B(y_mux),
        .S(s1),
        .Y(y_final)
    );
endmodule
`default_nettype wire