`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2022 17:11:28
// Design Name: 
// Module Name: Top_lvl_vga
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TopLevelvga(
   input CLK100MHZ,
   input vauxp6,
   input vauxn6,
   input vauxp7,
   input vauxn7,
   input vauxp15,
   input vauxn15,
   input vauxp14,
   input vauxn14,
  input move_up,
  input move_down,
      input reset,
    input high_s ,
    input medium_s ,
    input low_s ,
  output h_sync,
  output v_sync,
  output [3:0] red,
  output [3:0] green,
  output [3:0] blue,
  output reg [15:0] LED,
     output [3:0] an,
   output dp,
   output [6:0] seg 
  );
  
  wire [15:0] led;

  wire trig_v,video_on;
  wire [9:0] h_count;
  wire [9:0] v_count;
  wire [9:0] x_loc;
  wire [9:0] y_loc;
  wire clk_d;
  wire vrx;
  wire [3:0]vry;
  wire coll;
  wire move_up;
  wire move_down;
  
  XADCdemo a1 (
    CLK100MHZ,
    vauxp6,
    vauxn6,
    vauxp7,
    vauxn7,
    vauxp15,
    vauxn15,
    vauxp14,
    vauxn14,
    led,
    an,
    dp,
    seg ,
    vrx,vry
     
 );
  clk_div c1(CLK100MHZ, clk_d);
  h_counter h1(clk_d,h_count, trig_v);
  v_counter v1(clk_d,v_count, trig_v); // v_enable = trig_v
  vga_sync s1( h_count, v_count, h_sync,v_sync, video_on,x_loc, y_loc);
    pix_gen_game p1( clk_d,move_up , move_down , vry , x_loc, y_loc, video_on,reset , high_s , medium_s , low_s , red, green, blue );//pixel_x=x_loc, y_loc=pixel_y

  
  
endmodule //vga_sync
