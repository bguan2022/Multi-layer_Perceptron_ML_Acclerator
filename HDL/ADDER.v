module ADDER(
  clk, rst, mode, ready,
  P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P14, P15, P16, P17, P18, P19, P20, P21, P22, 
  P23, P24, P25, P26, P27, P28, P29, P30, P31, P32, P33, P34, P35, P36, P37, P38, P39, P40, 
  P41, P42, P43, P44, P45, P46, P47, P48, P49, P50, P51, P52, P53, P54, P55, P56, P57, P58,
  P59, P60, P61, P62, P63, P64, P65, P66, P67, P68, P69, P70, P71, P72, P73, P74, P75, P76, P77, P78, P79, P80, P81, P82, P83, P84, P85, P86, P87, P88, P89, P90, P91, P92, P93, P94, P95, P96, P97, P98, 
  //Output1,Output2,Output3,Output4,Output5,Output6,Output7,Output8,Output9,Output10,Output11
  output1,output2,output3,output4,output5,output6,output7,output8,output9,output10,output11,
  //output1,output2,
  P1_2, P2_2, P3_2, P4_2, P5_2, P6_2, P7_2, P8_2, P9_2, P10_2
);

input clk,rst;
input [1:0] mode;
input [31:0] P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P14, P15, P16, P17, P18, P19, P20, P21, P22, 
  P23, P24, P25, P26, P27, P28, P29, P30, P31, P32, P33, P34, P35, P36, P37, P38, P39, P40, 
  P41, P42, P43, P44, P45, P46, P47, P48, P49, P50, P51, P52, P53, P54, P55, P56, P57, P58,
  P59, P60, P61, P62, P63, P64, P65, P66, P67, P68, P69, P70, P71, P72, P73, P74, P75, P76, P77, P78, P79, P80, P81, P82, P83, P84, P85, P86, P87, P88, P89, P90, P91, P92, P93, P94, P95, P96, P97, P98;

output wire [15:0] output1,output2,output3,output4,output5,output6,output7,output8,output9,output10,output11;
//output wire [15:0] output1, output2;
//output wire [15:0] output1
//output 
//reg [31:0] Output1,Output2,Output3,Output4,Output5,Output6,Output7,Output8,Output9,Output10,Output11;
input [31:0] P1_2, P2_2, P3_2, P4_2, P5_2, P6_2, P7_2, P8_2, P9_2, P10_2; // product result from layer
reg [31:0] Output1, Output2, Output3, Output4, Output5, Output6, Output7, Output8, Output9, Output10, Output11;
//reg [31:0] Output1_2, Output2_2, Output3_2, Output4_2, Output5_2, Output6_2, Output7_2, Output8_2, Output9_2, Output10_2;
output reg ready;

//layer1 add
always @(posedge clk) begin
    if (rst) begin 
        Output1 <= 0;
        ready <=0;
    end 
    else begin
      //ready signal
        if (mode == 2'b00) begin
            Output1 <= P1+ P2+ P3+ P4+ P5+ P6+ P7+ P8+ P9+ P10+ P11+ P12+ P13+ P14+ P15+ P16+ P17+ P18+ P19+ P20+ P21+ P22+ P23+ P24+ P25+ P26+ P27+ P28+ P29+ P30+ P31+ P32+ P33+ P34+ P35+ P36+ P37+ P38+ P39+ P40+ P41+ P42+ P43+ P44+ P45+ P46+ P47+ P48+ P49+ P50+ P51+ P52+ P53+ P54+ P55+ P56+ P57+ P58+ P59+ P60+ P61+ P62+ P63+ P64+ P65+ P66+ P67+ P68+ P69+ P70+ P71+ P72+ P73+ P74+ P75+ P76+ P77+ P78+ P79+ P80+ P81+ P82+ P83+ P84+ P85+ P86+ P87+ P88+ P89+ P90+ P91+ P92+ P93+ P94+ P95+ P96+ P97+ P98;
            Output2 <= 0;
            Output3 <= 0;
            Output4 <= 0;
            Output5 <= 0;
            Output6 <= 0;
            Output7 <= 0;
            Output8 <= 0;
            Output9 <= 0;
            Output10 <= 0;
            Output11 <= 0;
            ready <= 0;
        end
		  else if (mode == 2'b01) begin
            Output1 <= P1+ P2+ P3+ P4+ P5+ P6+ P7+ P8+ P9+ P10+ P11+ P12+ P13+ P14+ P15+ P16+ P17+ P18+ P19+ P20+ P21+ P22+ P23+ P24+ P25+ P26+ P27+ P28+ P29+ P30+ P31+ P32+ P33+ P34+ P35+ P36+ P37+ P38+ P39+ P40+ P41+ P42+ P43+ P44+ P45+ P46+ P47+ P48+ P49+ P50+ P51+ P52+ P53+ P54+ P55+ P56+ P57+ P58+ P59+ P60+ P61+ P62+ P63+ P64+ P65+ P66+ P67+ P68+ P69+ P70+ P71+ P72+ P73+ P74+ P75+ P76+ P77+ P78+ P79+ P80+ P81+ P82+ P83+ P84+ P85+ P86+ P87+ P88+ P89+ P90+ P91+ P92+ P93+ P94+ P95+ P96+ P97+ P98;
            Output2 <= Output2;
            Output3 <= Output3;
            Output4 <= Output4;
            Output5 <= Output5;
            Output6 <= Output6;
            Output7 <= Output7;
            Output8 <= Output8;
            Output9 <= Output9;
            Output10 <= Output10;
            Output11 <= Output11;
            ready <= 0;
        end
        else if (mode == 2'b11) begin
          Output1 <= Output1+ P1+ P2+ P3+ P4+ P5+ P6+ P7+ P8+ P9+ P10+ P11+ P12+ P13+ P14+ P15+ P16+ P17+ P18+ P19+ P20+ P21+ P22+ P23+ P24+ P25+ P26+ P27+ P28+ P29+ P30+ P31+ P32+ P33+ P34+ P35+ P36+ P37+ P38+ P39+ P40+ P41+ P42+ P43+ P44+ P45+ P46+ P47+ P48+ P49+ P50+ P51+ P52+ P53+ P54+ P55+ P56+ P57+ P58+ P59+ P60+ P61+ P62+ P63+ P64+ P65+ P66+ P67+ P68+ P69+ P70+ P71+ P72+ P73+ P74+ P75+ P76+ P77+ P78+ P79+ P80+ P81+ P82+ P83+ P84+ P85+ P86+ P87+ P88+ P89+ P90+ P91+ P92+ P93+ P94+ P95+ P96+ P97+ P98;
            Output2 <= Output2 + P1_2;
            Output3 <= Output3 + P2_2;
            Output4 <= Output4 + P3_2;
            Output5 <= Output5 + P4_2;
            Output6 <= Output6 + P5_2;
            Output7 <= Output7 + P6_2;
            Output8 <= Output8 + P7_2;
            Output9 <= Output9 + P8_2;
            Output10 <= Output10 + P9_2;
            Output11 <= Output11 + P10_2;
          ready <= 1;
        end
        else begin
          Output1 <= Output1+ P1+ P2+ P3+ P4+ P5+ P6+ P7+ P8+ P9+ P10+ P11+ P12+ P13+ P14+ P15+ P16+ P17+ P18+ P19+ P20+ P21+ P22+ P23+ P24+ P25+ P26+ P27+ P28+ P29+ P30+ P31+ P32+ P33+ P34+ P35+ P36+ P37+ P38+ P39+ P40+ P41+ P42+ P43+ P44+ P45+ P46+ P47+ P48+ P49+ P50+ P51+ P52+ P53+ P54+ P55+ P56+ P57+ P58+ P59+ P60+ P61+ P62+ P63+ P64+ P65+ P66+ P67+ P68+ P69+ P70+ P71+ P72+ P73+ P74+ P75+ P76+ P77+ P78+ P79+ P80+ P81+ P82+ P83+ P84+ P85+ P86+ P87+ P88+ P89+ P90+ P91+ P92+ P93+ P94+ P95+ P96+ P97+ P98;
          Output2 <= Output2;
          Output3 <= Output3;
          Output4 <= Output4;
          Output5 <= Output5;
          Output6 <= Output6;
          Output7 <= Output7;
          Output8 <= Output8;
          Output9 <= Output9;
          Output10 <= Output10;
          Output11 <= Output11;
            
        end
       
    end
end


assign output1[15]    = Output1[31];
assign output2[15]    = Output2[31];
assign output3[15]    = Output3[31];
assign output4[15]    = Output4[31];
assign output5[15]    = Output5[31];
assign output6[15]    = Output6[31];
assign output7[15]    = Output7[31];
assign output8[15]    = Output8[31];
assign output9[15]    = Output9[31];
assign output10[15]   = Output10[31];
assign output11[15]   = Output11[31];
assign output1[14:0]  = Output1[23:8];
assign output2[14:0]  = Output2[23:8];
assign output3[14:0]  = Output3[23:8];
assign output4[14:0]  = Output4[23:8];
assign output5[14:0]  = Output5[23:8];
assign output6[14:0]  = Output6[23:8];
assign output7[14:0]  = Output7[23:8];
assign output8[14:0]  = Output8[23:8];
assign output9[14:0]  = Output9[23:8];
assign output10[14:0] = Output10[23:8];
assign output11[14:0] = Output11[23:8];


endmodule // ADDER
