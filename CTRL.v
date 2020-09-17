module CTRL(
  rst,
  clk,
  Q,N,I,
  addr_img_I,
  addr_byte_I_byte_W1,
  addr_img_W1_byte_W2,
  mult_mode,
  adder_mode,
  adder_ready,
  layer2_ready
);

input clk,rst;
input [3:0] Q;
input [7:0] N;
input [3:0] I;
output reg [3:0] addr_img_I;
output reg [9:0] addr_byte_I_byte_W1;
output reg [7:0] addr_img_W1_byte_W2;
output reg mult_mode;
output reg [1:0] adder_mode;
input adder_ready;
output reg layer2_ready;

always @(rst or Q or N or I) begin
  if (rst) begin
    addr_img_I = 1; // I 1~10
    addr_byte_I_byte_W1 = 1;//Q 1~8
    addr_img_W1_byte_W2 = 1;//N 1~200
    mult_mode = 1;
  end else begin
    addr_img_I = I;
    addr_img_W1_byte_W2 = N;
    case (Q)
      1 :  begin addr_byte_I_byte_W1 = 1;   mult_mode = 1; end
      2 :  begin addr_byte_I_byte_W1 = 99;  mult_mode = 1; end
      3 :  begin addr_byte_I_byte_W1 = 197; mult_mode = 1; end
      4 :  begin addr_byte_I_byte_W1 = 295; mult_mode = 1; end
      5 :  begin addr_byte_I_byte_W1 = 393; mult_mode = 1; end
      6 :  begin addr_byte_I_byte_W1 = 491; mult_mode = 1; end
      7 :  begin addr_byte_I_byte_W1 = 589; mult_mode = 1; end
      8 :  begin addr_byte_I_byte_W1 = 687; mult_mode = 0; end
      default:begin addr_byte_I_byte_W1 = 0; mult_mode = 1; end
    endcase
  end
end

always @(posedge clk ) begin
  if (rst) begin
    adder_mode <= 0;
  end 
  else begin
    if (Q == 1) begin
      if (N == 2) begin
        adder_mode <= 2'b00;
      end 
      else begin
        adder_mode <= 2'b01;
      end
    end 
    else begin
      if (Q == 8) begin
        adder_mode <= 2'b11;
      end 
      else begin
        adder_mode <= 2'b10;
      end
    end
  end
end

//always @(adder_ready or N or Q or rst) begin
always @(adder_ready) begin
  if (rst) begin
    layer2_ready = 0;
  end else begin
    if (N == 2) begin
    //if (((N == 2) && (Q != 1)) || ((N == 3) && (Q == 1 || Q == 2) )) begin
      layer2_ready = 1;
    end else begin
      layer2_ready = 0;
    end
  end
end

endmodule // CTRL