/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = WIDTH
     DIV = DIV
     TOP = TOP
     UP = 1
*/
module counter_45 (
    input clk,
    input rst,
    output reg [7:0] value
  );
  
  localparam SIZE = 4'h8;
  localparam DIV = 4'hb;
  localparam TOP = 7'h5d;
  localparam UP = 1'h1;
  
  
  reg [18:0] M_ctr_d, M_ctr_q = 1'h0;
  
  localparam MAX_VALUE = 18'h2efff;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    value = M_ctr_q[11+7-:8];
    if (1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
      if (1'h1 && M_ctr_q == 18'h2efff) begin
        M_ctr_d = 1'h0;
      end
    end else begin
      M_ctr_d = M_ctr_q - 1'h1;
      if (1'h1 && M_ctr_q == 1'h0) begin
        M_ctr_d = 18'h2efff;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
