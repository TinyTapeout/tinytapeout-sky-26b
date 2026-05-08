/*
 * Copyright (c) 2024 Nemalipuri Rajkamal
 * SPDX-License-Identifier: Apache-2.0
 */
`default_nettype none

module tt_um_rajkamal_analog (
    input  wire       VGND,
    input  wire       VDPWR,
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    inout  wire [7:0] ua,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

  yen_top yen_top_inst (
    .VDD      (VDPWR),
    .VSS      (VGND),
    .VCMUXOUT (ua[0]),
    .VCMUXIN  (ua[1])
  );

  assign uo_out  = {8{VGND}};
  assign uio_out = {8{VGND}};
  assign uio_oe  = {8{VGND}};

endmodule
