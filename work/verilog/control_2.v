/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module control_2 (
    input r,
    input [1:0] d,
    input [2:0] state,
    output reg [1:0] sel_level,
    output reg sel_display,
    output reg sel_start,
    output reg sel_state,
    output reg sel_map,
    output reg sel_check,
    output reg check_win,
    output reg [5:0] alufn,
    output reg [1:0] sel_new_pos,
    output reg [2:0] state_output
  );
  
  
  
  always @* begin
    state_output = state;
    
    case (state)
      1'h0: begin
        sel_level = d;
        sel_display = 1'h0;
        sel_start = 1'h1;
        sel_state = 1'h0;
        sel_map = 1'bz;
        sel_check = 1'bz;
        check_win = 1'bz;
        alufn = 1'bz;
        sel_new_pos = 1'bz;
      end
      1'h1: begin
        sel_level = 1'bz;
        sel_display = 1'h1;
        sel_start = ~r;
        sel_state = 1'h0;
        sel_map = 1'bz;
        sel_check = 1'bz;
        check_win = 1'h0;
        alufn = 1'bz;
        sel_new_pos = 1'bz;
      end
      2'h2: begin
        sel_level = 1'bz;
        sel_display = 1'h1;
        sel_start = ~r;
        sel_state = 1'h1;
        sel_map = 1'h0;
        sel_check = 1'h0;
        check_win = 1'h0;
        alufn = 17'h18704;
        sel_new_pos = d;
      end
      2'h3: begin
        sel_level = 1'bz;
        sel_display = 1'h1;
        sel_start = ~r;
        sel_state = 1'h1;
        sel_map = 1'h1;
        sel_check = 1'h0;
        check_win = 1'h1;
        alufn = 17'h18704;
        sel_new_pos = d;
      end
      3'h4: begin
        sel_level = 1'bz;
        sel_display = 1'h1;
        sel_start = ~r;
        sel_state = 1'h0;
        sel_map = 1'bz;
        sel_check = 1'h1;
        check_win = 2'h2;
        alufn = 17'h186a0;
        sel_new_pos = 1'bz;
      end
      3'h5: begin
        sel_level = 1'bz;
        sel_display = 1'h1;
        sel_start = 1'h0;
        sel_state = 1'bz;
        sel_map = 1'bz;
        sel_check = 1'bz;
        check_win = 1'bz;
        alufn = 1'bz;
        sel_new_pos = 1'bz;
      end
      default: begin
        sel_level = d;
        sel_display = 1'h0;
        sel_start = 1'h1;
        sel_state = 1'h0;
        sel_map = 1'bz;
        sel_check = 1'bz;
        check_win = 1'bz;
        alufn = 1'bz;
        sel_new_pos = 1'bz;
      end
    endcase
  end
endmodule