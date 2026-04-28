/* Copyright (c) 2024 Guruprasad
 * SPDX-License-Identifier: Apache-2.0
 */
module tt_um_bgr (
    input  [7:0] ui_in,
    output [7:0] uo_out,
    inout  [7:0] uio,
    input        clk,
    input        rst_n,
    input        ena,
    output [7:0] ua,
    input        VGND,
    input        VDPWR
);


    // --- Analog placeholder ---
    // Since CI is digital-only, we just drive a dummy value

    assign ua[7:0] = 8'b0;

    // No digital outputs
    assign uo_out = 8'b0;

    // No bidirectional usage
    assign uio = 8'bz;

endmodule
