/*
 * Copyright (c) 2024 Tiny Tapeout and Verilog Meetup
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_verilog_meetup_template_project_TODO
(
    input  [7:0] ui_in,    // Dedicated inputs
    output [7:0] uo_out,   // Dedicated outputs
    input  [7:0] uio_in,   // IOs: Input path
    output [7:0] uio_out,  // IOs: Output path
    output [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input        ena,      // always 1 when the design is powered, so you can ignore it
    input        clk,      // clock
    input        rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
  assign uio_out = 0;
  assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
  wire _unused = & { ena, clk, rst_n, 1'b0 };

  uo[0]: "VGA red [1]"
  uo[1]: "VGA green [1]"
  uo[2]: "VGA blue [1]"
  uo[3]: "VGA vsync"
  uo[4]: "VGA red [0]"
  uo[5]: "VGA green [0]"
  uo[6]: "VGA blue [0]"
  uo[7]: "VGA hsync"

  # Bidirectional pins
  uio[0]: ""
  uio[1]: ""
  uio[2]: ""
  uio[3]: ""
  uio[4]: "output sticky_failure"
  uio[5]: "TM1638 inout dio"
  uio[6]: "TM1638 output clk"
  uio[7]: "TM1638 output stb"


endmodule
