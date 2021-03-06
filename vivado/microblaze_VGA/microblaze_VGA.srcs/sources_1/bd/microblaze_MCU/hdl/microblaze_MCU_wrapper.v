//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Jun 17 18:04:33 2020
//Host        : Waysker running 64-bit major release  (build 9200)
//Command     : generate_target microblaze_MCU_wrapper.bd
//Design      : microblaze_MCU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module microblaze_MCU_wrapper
   (Hsync,
    PS2Clk,
    PS2Data,
    Vsync,
    clk,
    led,
    one_led,
    rst,
    vgaBlue,
    vgaGreen,
    vgaRed);
  output Hsync;
  input PS2Clk;
  input PS2Data;
  output Vsync;
  input clk;
  output [7:0]led;
  output one_led;
  input rst;
  output [3:0]vgaBlue;
  output [3:0]vgaGreen;
  output [3:0]vgaRed;

  wire Hsync;
  wire PS2Clk;
  wire PS2Data;
  wire Vsync;
  wire clk;
  wire [7:0]led;
  wire one_led;
  wire rst;
  wire [3:0]vgaBlue;
  wire [3:0]vgaGreen;
  wire [3:0]vgaRed;

  microblaze_MCU microblaze_MCU_i
       (.Hsync(Hsync),
        .PS2Clk(PS2Clk),
        .PS2Data(PS2Data),
        .Vsync(Vsync),
        .clk(clk),
        .led(led),
        .one_led(one_led),
        .rst(rst),
        .vgaBlue(vgaBlue),
        .vgaGreen(vgaGreen),
        .vgaRed(vgaRed));
endmodule
