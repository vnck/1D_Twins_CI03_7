/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module matrix_display_1 (
    input clk,
    input rst,
    input [63:0] green,
    input [63:0] red,
    output reg [7:0] row_red,
    output reg [7:0] row_green,
    output reg [7:0] col
  );
  
  
  
  
  localparam FLIP = 5'h10;
  
  reg [63:0] rotated_green;
  
  reg [63:0] rotated_red;
  
  wire [4-1:0] M_counter_r_value;
  counter_21 counter_r (
    .clk(clk),
    .rst(rst),
    .value(M_counter_r_value)
  );
  
  reg [3:0] cur_col;
  
  integer i;
  integer x;
  integer y;
  
  always @* begin
    for (x = 1'h0; x <= 3'h7; x = x + 1) begin
      for (y = 1'h0; y <= 3'h7; y = y + 1) begin
        rotated_green[(y)*8+(x)*1+0-:1] = green[(3'h7 - x)*8+(y)*1+0-:1];
        rotated_red[(y)*8+(x)*1+0-:1] = red[(3'h7 - x)*8+(y)*1+0-:1];
      end
    end
    row_red = 8'hff;
    row_green = 8'hff;
    col = 8'h00;
    cur_col = M_counter_r_value;
    col[(cur_col)*1+0-:1] = 1'h1;
    for (i = 1'h0; i <= 3'h7; i = i + 1) begin
      row_red[(i)*1+0-:1] = ~rotated_red[(i)*8+(3'h7 - cur_col)*1+0-:1];
      row_green[(i)*1+0-:1] = ~rotated_green[(i)*8+(3'h7 - cur_col)*1+0-:1];
    end
  end
endmodule
