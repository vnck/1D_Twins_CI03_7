/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module matrix_decoder_4 (
    input [5:0] curr_pos,
    input [35:0] mapdata,
    input [2:0] sel_new_pos,
    output reg [5:0] new_pos
  );
  
  
  
  reg [5:0] temp_pos;
  
  reg out;
  
  always @* begin
    if (sel_new_pos == 1'h0) begin
      temp_pos = curr_pos - 6'h01;
    end else begin
      if (sel_new_pos == 1'h1) begin
        temp_pos = curr_pos + 6'h01;
      end else begin
        if (sel_new_pos == 2'h2) begin
          temp_pos = curr_pos + 6'h08;
        end else begin
          if (sel_new_pos == 2'h3) begin
            temp_pos = curr_pos - 6'h08;
          end else begin
            temp_pos = 6'h00;
          end
        end
      end
    end
    out = mapdata[(temp_pos[0+2-:3])*6+(temp_pos[3+2-:3])*1+0-:1];
    if (out != 1'h1) begin
      new_pos = temp_pos;
    end else begin
      new_pos = curr_pos;
    end
  end
endmodule
