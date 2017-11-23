/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module ledMatrix_1 (
    input clk,
    input rst,
    input digit,
    output reg [7:0] ledx,
    output reg [7:0] ledy
  );
  
  
  
  
  reg [4:0] M_matrix_counter_d, M_matrix_counter_q = 1'h0;
  
  always @* begin
    M_matrix_counter_d = M_matrix_counter_q;
    
    ledx = 8'h00;
    ledy = 8'h00;
    
    case (digit)
      1'h0: begin
        
        case (M_matrix_counter_q)
          5'h00: begin
            ledx = 8'h94;
            ledy = 8'hd6;
          end
          5'h01: begin
            ledx = 8'h84;
            ledy = 8'hd7;
          end
          5'h02: begin
            ledx = 8'h94;
            ledy = 8'h57;
          end
          5'h03: begin
            ledx = 8'h94;
            ledy = 8'h9b;
          end
          5'h04: begin
            ledx = 8'h90;
            ledy = 8'hdb;
          end
          5'h05: begin
            ledx = 8'hd4;
            ledy = 8'h53;
          end
          5'h06: begin
            ledx = 8'h84;
            ledy = 8'hf3;
          end
          5'h07: begin
            ledx = 8'hb4;
            ledy = 8'hd2;
          end
          5'h08: begin
            ledx = 8'h96;
            ledy = 8'h93;
          end
          5'h09: begin
            ledx = 8'h96;
            ledy = 8'hd2;
          end
          5'h0a: begin
            ledx = 8'h86;
            ledy = 8'hd3;
          end
          5'h0b: begin
            ledx = 8'h96;
            ledy = 8'h53;
          end
          5'h0c: begin
            ledx = 8'h92;
            ledy = 8'hd3;
          end
        endcase
      end
      1'h1: begin
        
        case (M_matrix_counter_q)
          5'h00: begin
            ledx = 8'h94;
            ledy = 8'hd6;
          end
          5'h01: begin
            ledx = 8'h84;
            ledy = 8'hd7;
          end
          5'h02: begin
            ledx = 8'h94;
            ledy = 8'h57;
          end
          5'h03: begin
            ledx = 8'h94;
            ledy = 8'h9b;
          end
          5'h04: begin
            ledx = 8'h90;
            ledy = 8'hdb;
          end
          5'h05: begin
            ledx = 8'hd4;
            ledy = 8'h53;
          end
          5'h06: begin
            ledx = 8'h94;
            ledy = 8'hf2;
          end
          5'h07: begin
            ledx = 8'h84;
            ledy = 8'hf3;
          end
          5'h08: begin
            ledx = 8'h94;
            ledy = 8'h73;
          end
          5'h09: begin
            ledx = 8'hb4;
            ledy = 8'h53;
          end
          5'h0a: begin
            ledx = 8'h96;
            ledy = 8'h93;
          end
          5'h0b: begin
            ledx = 8'h92;
            ledy = 8'hd3;
          end
          5'h0c: begin
            ledx = 8'h95;
            ledy = 8'hd2;
          end
          5'h0d: begin
            ledx = 8'h85;
            ledy = 8'hd3;
          end
          5'h0e: begin
            ledx = 8'h95;
            ledy = 8'h53;
          end
        endcase
      end
    endcase
    M_matrix_counter_d = M_matrix_counter_q + 1'h1;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_matrix_counter_q <= 1'h0;
    end else begin
      M_matrix_counter_q <= M_matrix_counter_d;
    end
  end
  
endmodule