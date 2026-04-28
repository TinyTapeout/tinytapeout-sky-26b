/* Copyright (c) 2024 Guruprasad
 * SPDX-License-Identifier: Apache-2.0
 */
module tt_um_bgr (
    input  [7:0] ui_in,    // Dedicated inputs
    output [7:0] uo_out,   // Dedicated outputs
    input  [7:0] uio_in,   // IO pads: Input path 
    output [7:0] uio_out,  // IO pads: Output path 
    output [7:0] uio_oe,   // IO pads: Enable path (active high: 0=input, 1=output) 
    input        clk,      // clock
    input        rst_n,    // reset_n - low to reset
    input        ena,      // enable - maintain 1 to keep the design active
    output [7:0] ua,       // Analog pins 
    input        VGND,     // Ground
    input        VDPWR     // Power
);

    // Dummy assignments for digital satisfaction
    assign uo_out = 8'b0; 
    assign uio_out = 8'b0;
    assign uio_oe  = 8'b0; // Set all as inputs to be safe 
    assign ua = 8'b0;

endmodule
