module SRAM_WEIG2(
    clk,
    re_en,//read enable
    re_addr_byte,
    dout1,dout2,dout3,dout4,dout5,dout6,dout7,dout8,dout9,dout10
);

  input clk,re_en;
  output [15:0]dout1,dout2,dout3,dout4,dout5,dout6,dout7,dout8,dout9,dout10;
  reg [15:0]dout1,dout2,dout3,dout4,dout5,dout6,dout7,dout8,dout9,dout10;
  reg [15:0]dout1_temp,dout2_temp,dout3_temp,dout4_temp,dout5_temp,dout6_temp,dout7_temp,dout8_temp,dout9_temp,dout10_temp;
  input [7:0]re_addr_byte;
  //re_addr_byte 1~784 1~200
  //re_addr_img 1~200 1~10

  reg [15:0]memory_wight2[1:2000];
  initial begin
    $readmemb("E:/course/ese461/FinalProject_Chenfeng/layer2_weight_fix.txt",memory_wight2) ;
  end


  always @(posedge clk ) begin
    if (!re_en) begin
      dout1_temp <= 16'bz;
      dout2_temp <= 16'bz;
      dout3_temp <= 16'bz;
      dout4_temp <= 16'bz;
      dout5_temp <= 16'bz;
      dout6_temp <= 16'bz;
      dout7_temp <= 16'bz;
      dout8_temp <= 16'bz;
      dout9_temp <= 16'bz;
      dout10_temp <= 16'bz; 
    end else begin
      if (re_addr_byte>=2 && re_addr_byte<=200) begin
      //if (re_addr_byte>=1 && re_addr_byte<=200) begin
        dout1_temp <= memory_wight2[re_addr_byte-1+0];
        dout2_temp <= memory_wight2[re_addr_byte-1+200];
        dout3_temp <= memory_wight2[re_addr_byte-1+400];
        dout4_temp <= memory_wight2[re_addr_byte-1+600];
        dout5_temp <= memory_wight2[re_addr_byte-1+800];
        dout6_temp <= memory_wight2[re_addr_byte-1+1000];
        dout7_temp <= memory_wight2[re_addr_byte-1+1200];
        dout8_temp <= memory_wight2[re_addr_byte-1+1400];
        dout9_temp <= memory_wight2[re_addr_byte-1+1600];
        dout10_temp <= memory_wight2[re_addr_byte-1+1800];
      end
      if (re_addr_byte==1) begin
        dout1 <= memory_wight2[200+0];
        dout2 <= memory_wight2[200+200];
        dout3 <= memory_wight2[200+400];
        dout4 <= memory_wight2[200+600];
        dout5 <= memory_wight2[200+800];
        dout6 <= memory_wight2[200+1000];
        dout7 <= memory_wight2[200+1200];
        dout8 <= memory_wight2[200+1400];
        dout9 <= memory_wight2[200+1600];
        dout10 <= memory_wight2[200+1800];
      end
      
    end
  end
  
  always @ (posedge clk) begin
	if (!re_en) begin
      dout1 <= 16'bz;
      dout2 <= 16'bz;
      dout3 <= 16'bz;
      dout4 <= 16'bz;
      dout5 <= 16'bz;
      dout6 <= 16'bz;
      dout7 <= 16'bz;
      dout8 <= 16'bz;
      dout9 <= 16'bz;
      dout10 <= 16'bz; 
    end 
	else begin
		dout1 <= dout1_temp;
		dout2 <= dout2_temp;
		dout3 <= dout3_temp;
		dout4 <= dout4_temp;
		dout5 <= dout5_temp;
		dout6 <= dout6_temp;
		dout7 <= dout7_temp;
		dout8 <= dout8_temp;
		dout9 <= dout9_temp;
		dout10 <= dout10_temp;
	end
  end
endmodule // SRAM_WEIG2
