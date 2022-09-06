module CNT(
  clk,rst,
  Q,N,I,
  done
);

input clk,rst;
output [3:0] Q; //1~8 // Input .* weight1 1~8 => hidden result
output [7:0] N; //1~200 // hidden result .* 1~200 => finial result
output [3:0] I; //1~10 // finial result output
reg [3:0] Q;
reg [7:0] N;
reg [3:0] I;
output reg done;

always @(posedge clk ) begin
  if (rst) begin
    Q <= 1;
    N <= 1;
    I <= 1;
    done <= 0;
  end 

  else begin
    if (Q <= 7) begin
      Q <= Q + 1;
    end 
    else begin
      Q <= 1;

      if (N <= 199) begin
        N <= N + 1;
      end 
      else begin
        N <= 1;
        if (I <= 9) begin
          I <= I + 1;
        end 
        else begin
          I <= 1;
          done <= 1;
        end
      end
    end
  end
  end 


endmodule // CNT
