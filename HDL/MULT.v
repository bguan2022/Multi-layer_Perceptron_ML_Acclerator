module MULT (mode, clk, rst, 

I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, I20, I21, I22, I23, I24, I25, I26, I27, I28, I29, I30, I31, I32, I33, I34, I35, I36, I37, I38, I39, I40, I41, I42, I43, I44, I45, I46, I47, I48, I49, I50, I51, I52, I53, I54, I55, I56, I57, I58, I59, I60, I61, I62, I63, I64, I65, I66, I67, I68, I69, I70, I71, I72, I73, I74, I75, I76, I77, I78, I79, I80, I81, I82, I83, I84, I85, I86, I87, I88, I89, I90, I91, I92, I93, I94, I95, I96, I97, I98, 

W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12, W13, W14, W15, W16, W17, W18, W19, W20, W21, W22, W23, W24, W25, W26, W27, W28, W29, W30, W31, W32, W33, W34, W35, W36, W37, W38, W39, W40, W41, W42, W43, W44, W45, W46, W47, W48, W49, W50, W51, W52, W53, W54, W55, W56, W57, W58, W59, W60, W61, W62, W63, W64, W65, W66, W67, W68, W69, W70, W71, W72, W73, W74, W75, W76, W77, W78, W79, W80, W81, W82, W83, W84, W85, W86, W87, W88, W89, W90, W91, W92, W93, W94, W95, W96, W97, W98,

output1, output2, output3, output4, output5, output6, output7, output8, output9, output10, output11, output12, output13, output14, output15, output16, output17, output18, output19, output20, output21, output22, output23, output24, output25, output26, output27, output28, output29, output30, output31, output32, output33, output34, output35, output36, output37, output38, output39, output40, output41, output42, output43, output44, output45, output46, output47, output48, output49, output50, output51, output52, output53, output54, output55, output56, output57, output58, output59, output60, output61, output62, output63, output64, output65, output66, output67, output68, output69, output70, output71, output72, output73, output74, output75, output76, output77, output78, output79, output80, output81, output82, output83, output84, output85, output86, output87, output88, output89, output90, output91, output92, output93, output94, output95, output96, output97, output98,

//layer 2
W1_2, W2_2, W3_2, W4_2, W5_2, W6_2, W7_2, W8_2, W9_2, W10_2, 
I_hidden,
output1_2, output2_2, output3_2, output4_2, output5_2, output6_2, output7_2, output8_2, output9_2, output10_2

);
    // parameter gnd = 16'b0;

    input mode;
    input clk;
    input rst;
    input [15:0] I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, I20, I21, I22, I23, I24, I25, I26, I27, I28, I29, I30, I31, I32, I33, I34, I35, I36, I37, I38, I39, I40, I41, I42, I43, I44, I45, I46, I47, I48, I49, I50, I51, I52, I53, I54, I55, I56, I57, I58, I59, I60, I61, I62, I63, I64, I65, I66, I67, I68, I69, I70, I71, I72, I73, I74, I75, I76, I77, I78, I79, I80, I81, I82, I83, I84, I85, I86, I87, I88, I89, I90, I91, I92, I93, I94, I95, I96, I97, I98;

    input [15:0] W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12, W13, W14, W15, W16, W17, W18, W19, W20, W21, W22, W23, W24, W25, W26, W27, W28, W29, W30, W31, W32, W33, W34, W35, W36, W37, W38, W39, W40, W41, W42, W43, W44, W45, W46, W47, W48, W49, W50, W51, W52, W53, W54, W55, W56, W57, W58, W59, W60, W61, W62, W63, W64, W65, W66, W67, W68, W69, W70, W71, W72, W73, W74, W75, W76, W77, W78, W79, W80, W81, W82, W83, W84, W85, W86, W87, W88, W89, W90, W91, W92, W93, W94, W95, W96, W97, W98;


    // input [15:0] W55_2, W56_2, W57_2, W58_2, W59_2, W60_2, W61_2, W62_2, W63_2, W64_2;
    output [31:0] output1, output2, output3, output4, output5, output6, output7, output8, output9, output10, output11, output12, output13, output14, output15, output16, output17, output18, output19, output20, output21, output22, output23, output24, output25, output26, output27, output28, output29, output30, output31, output32, output33, output34, output35, output36, output37, output38, output39, output40, output41, output42, output43, output44, output45, output46, output47, output48, output49, output50, output51, output52, output53, output54, output55, output56, output57, output58, output59, output60, output61, output62, output63, output64, output65, output66, output67, output68, output69, output70, output71, output72, output73, output74, output75, output76, output77, output78, output79, output80, output81, output82, output83, output84, output85, output86, output87, output88, output89, output90, output91, output92, output93, output94, output95, output96, output97, output98;

    // layer2 input & output
    input [15:0] I_hidden;
    input [15:0] W1_2, W2_2, W3_2, W4_2, W5_2, W6_2, W7_2, W8_2, W9_2, W10_2;

    output [31:0] output1_2, output2_2, output3_2, output4_2, output5_2, output6_2, output7_2, output8_2, output9_2, output10_2;

    //-------wire & reg----------
    wire [31:0]  output1, output2, output3, output4, output5, output6, output7, output8, output9, output10, output11, output12, output13, output14, output15, output16, output17, output18, output19, output20, output21, output22, output23, output24, output25, output26, output27, output28, output29, output30, output31, output32, output33, output34, output35, output36, output37, output38, output39, output40, output41, output42, output43, output44, output45, output46, output47, output48, output49, output50, output51, output52, output53, output54, output55, output56, output57, output58, output59, output60, output61, output62, output63, output64, output65, output66, output67, output68, output69, output70, output71, output72, output73, output74, output75, output76, output77, output78, output79, output80, output81, output82, output83, output84, output85, output86, output87, output88, output89, output90, output91, output92, output93, output94, output95, output96, output97, output98;

    wire [31:0] output1_2, output2_2, output3_2, output4_2, output5_2, output6_2, output7_2, output8_2, output9_2, output10_2;

    wire [31:0]  P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P14, P15, P16, P17, P18, P19, P20, P21, P22, P23, P24, P25, P26, P27, P28, P29, P30, P31, P32, P33, P34, P35, P36, P37, P38, P39, P40, P41, P42, P43, P44, P45, P46, P47, P48, P49, P50, P51, P52, P53, P54, P55, P56, P57, P58, P59, P60, P61, P62, P63, P64, P65, P66, P67, P68, P69, P70, P71, P72, P73, P74, P75, P76, P77, P78, P79, P80, P81, P82, P83, P84, P85, P86, P87, P88, P89, P90, P91, P92, P93, P94, P95, P96, P97, P98;
    
    wire [31:0] P1_2, P2_2, P3_2, P4_2, P5_2, P6_2, P7_2, P8_2, P9_2, P10_2;

    reg [15:0] X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11;

    //layer2 counter for shifter 1~10
    reg [3:0] cnt_2;

    //--------design code----------

    //98 multiplier
    mult mult1 ( .A(I1),
            .B(W1),
            .PRODUCT(P1),
            .rst(rst),
            .clk(clk));
    mult mult2 ( .A(I2),
            .B(W2),
            .PRODUCT(P2),
            .rst(rst),
            .clk(clk));
    mult mult3 ( .A(I3),
            .B(W3),
            .PRODUCT(P3),
            .rst(rst),
            .clk(clk));
    mult mult4 ( .A(I4),
            .B(W4),
            .PRODUCT(P4),
            .rst(rst),
            .clk(clk));
    mult mult5 ( .A(I5),
            .B(W5),
            .PRODUCT(P5),
            .rst(rst),
            .clk(clk));
    mult mult6 ( .A(I6),
            .B(W6),
            .PRODUCT(P6),
            .rst(rst),
            .clk(clk));
    mult mult7 ( .A(I7),
            .B(W7),
            .PRODUCT(P7),
            .rst(rst),
            .clk(clk));
    mult mult8 ( .A(I8),
            .B(W8),
            .PRODUCT(P8),
            .rst(rst),
            .clk(clk));
    mult mult9 ( .A(I9),
            .B(W9),
            .PRODUCT(P9),
            .rst(rst),
            .clk(clk));
    mult mult10 ( .A(I10),
            .B(W10),
            .PRODUCT(P10),
            .rst(rst),
            .clk(clk));
    mult mult11 ( .A(I11),
            .B(W11),
            .PRODUCT(P11),
            .rst(rst),
            .clk(clk));
    mult mult12 ( .A(I12),
            .B(W12),
            .PRODUCT(P12),
            .rst(rst),
            .clk(clk));
    mult mult13 ( .A(I13),
            .B(W13),
            .PRODUCT(P13),
            .rst(rst),
            .clk(clk));
    mult mult14 ( .A(I14),
            .B(W14),
            .PRODUCT(P14),
            .rst(rst),
            .clk(clk));
    mult mult15 ( .A(I15),
            .B(W15),
            .PRODUCT(P15),
            .rst(rst),
            .clk(clk));
    mult mult16 ( .A(I16),
            .B(W16),
            .PRODUCT(P16),
            .rst(rst),
            .clk(clk));
    mult mult17 ( .A(I17),
            .B(W17),
            .PRODUCT(P17),
            .rst(rst),
            .clk(clk));
    mult mult18 ( .A(I18),
            .B(W18),
            .PRODUCT(P18),
            .rst(rst),
            .clk(clk));
    mult mult19 ( .A(I19),
            .B(W19),
            .PRODUCT(P19),
            .rst(rst),
            .clk(clk));
    mult mult20 ( .A(I20),
            .B(W20),
            .PRODUCT(P20),
            .rst(rst),
            .clk(clk));
    mult mult21 ( .A(I21),
            .B(W21),
            .PRODUCT(P21),
            .rst(rst),
            .clk(clk));
    mult mult22 ( .A(I22),
            .B(W22),
            .PRODUCT(P22),
            .rst(rst),
            .clk(clk));
    mult mult23 ( .A(I23),
            .B(W23),
            .PRODUCT(P23),
            .rst(rst),
            .clk(clk));
    mult mult24 ( .A(I24),
            .B(W24),
            .PRODUCT(P24),
            .rst(rst),
            .clk(clk));
    mult mult25 ( .A(I25),
            .B(W25),
            .PRODUCT(P25),
            .rst(rst),
            .clk(clk));
    mult mult26 ( .A(I26),
            .B(W26),
            .PRODUCT(P26),
            .rst(rst),
            .clk(clk));
    mult mult27 ( .A(I27),
            .B(W27),
            .PRODUCT(P27),
            .rst(rst),
            .clk(clk));
    mult mult28 ( .A(I28),
            .B(W28),
            .PRODUCT(P28),
            .rst(rst),
            .clk(clk));
    mult mult29 ( .A(I29),
            .B(W29),
            .PRODUCT(P29),
            .rst(rst),
            .clk(clk));
    mult mult30 ( .A(I30),
            .B(W30),
            .PRODUCT(P30),
            .rst(rst),
            .clk(clk));
    mult mult31 ( .A(I31),
            .B(W31),
            .PRODUCT(P31),
            .rst(rst),
            .clk(clk));
    mult mult32 ( .A(I32),
            .B(W32),
            .PRODUCT(P32),
            .rst(rst),
            .clk(clk));
    mult mult33 ( .A(I33),
            .B(W33),
            .PRODUCT(P33),
            .rst(rst),
            .clk(clk));
    mult mult34 ( .A(I34),
            .B(W34),
            .PRODUCT(P34),
            .rst(rst),
            .clk(clk));
    mult mult35 ( .A(I35),
            .B(W35),
            .PRODUCT(P35),
            .rst(rst),
            .clk(clk));
    mult mult36 ( .A(I36),
            .B(W36),
            .PRODUCT(P36),
            .rst(rst),
            .clk(clk));
    mult mult37 ( .A(I37),
            .B(W37),
            .PRODUCT(P37),
            .rst(rst),
            .clk(clk));
    mult mult38 ( .A(I38),
            .B(W38),
            .PRODUCT(P38),
            .rst(rst),
            .clk(clk));
    mult mult39 ( .A(I39),
            .B(W39),
            .PRODUCT(P39),
            .rst(rst),
            .clk(clk));
    mult mult40 ( .A(I40),
            .B(W40),
            .PRODUCT(P40),
            .rst(rst),
            .clk(clk));
    mult mult41 ( .A(I41),
            .B(W41),
            .PRODUCT(P41),
            .rst(rst),
            .clk(clk));
    mult mult42 ( .A(I42),
            .B(W42),
            .PRODUCT(P42),
            .rst(rst),
            .clk(clk));
    mult mult43 ( .A(I43),
            .B(W43),
            .PRODUCT(P43),
            .rst(rst),
            .clk(clk));
    mult mult44 ( .A(I44),
            .B(W44),
            .PRODUCT(P44),
            .rst(rst),
            .clk(clk));
    mult mult45 ( .A(I45),
            .B(W45),
            .PRODUCT(P45),
            .rst(rst),
            .clk(clk));
    mult mult46 ( .A(I46),
            .B(W46),
            .PRODUCT(P46),
            .rst(rst),
            .clk(clk));
    mult mult47 ( .A(I47),
            .B(W47),
            .PRODUCT(P47),
            .rst(rst),
            .clk(clk));
    mult mult48 ( .A(I48),
            .B(W48),
            .PRODUCT(P48),
            .rst(rst),
            .clk(clk));
    mult mult49 ( .A(I49),
            .B(W49),
            .PRODUCT(P49),
            .rst(rst),
            .clk(clk));
    mult mult50 ( .A(I50),
            .B(W50),
            .PRODUCT(P50),
            .rst(rst),
            .clk(clk));
    mult mult51 ( .A(I51),
            .B(W51),
            .PRODUCT(P51),
            .rst(rst),
            .clk(clk));
    mult mult52 ( .A(I52),
            .B(W52),
            .PRODUCT(P52),
            .rst(rst),
            .clk(clk));
    mult mult53 ( .A(I53),
            .B(W53),
            .PRODUCT(P53),
            .rst(rst),
            .clk(clk));
    mult mult54 ( .A(I54),
            .B(W54),
            .PRODUCT(P54),
            .rst(rst),
            .clk(clk));
    mult mult55 ( .A(I55),
            .B(W55),
            .PRODUCT(P55),
            .rst(rst),
            .clk(clk));
    mult mult56 ( .A(I56),
            .B(W56),
            .PRODUCT(P56),
            .rst(rst),
            .clk(clk));
    mult mult57 ( .A(I57),
            .B(W57),
            .PRODUCT(P57),
            .rst(rst),
            .clk(clk));
    mult mult58 ( .A(I58),
            .B(W58),
            .PRODUCT(P58),
            .rst(rst),
            .clk(clk));
    mult mult59 ( .A(I59),
            .B(W59),
            .PRODUCT(P59),
            .rst(rst),
            .clk(clk));
    mult mult60 ( .A(I60),
            .B(W60),
            .PRODUCT(P60),
            .rst(rst),
            .clk(clk));
    mult mult61 ( .A(I61),
            .B(W61),
            .PRODUCT(P61),
            .rst(rst),
            .clk(clk));
    mult mult62 ( .A(I62),
            .B(W62),
            .PRODUCT(P62),
            .rst(rst),
            .clk(clk));
    mult mult63 ( .A(I63),
            .B(W63),
            .PRODUCT(P63),
            .rst(rst),
            .clk(clk));
    mult mult64 ( .A(I64),
            .B(W64),
            .PRODUCT(P64),
            .rst(rst),
            .clk(clk));
    mult mult65 ( .A(I65),
            .B(W65),
            .PRODUCT(P65),
            .rst(rst),
            .clk(clk));
    mult mult66 ( .A(I66),
            .B(W66),
            .PRODUCT(P66),
            .rst(rst),
            .clk(clk));
    mult mult67 ( .A(I67),
            .B(W67),
            .PRODUCT(P67),
            .rst(rst),
            .clk(clk));
    mult mult68 ( .A(I68),
            .B(W68),
            .PRODUCT(P68),
            .rst(rst),
            .clk(clk));
    mult mult69 ( .A(I69),
            .B(W69),
            .PRODUCT(P69),
            .rst(rst),
            .clk(clk));
    mult mult70 ( .A(I70),
            .B(W70),
            .PRODUCT(P70),
            .rst(rst),
            .clk(clk));
    mult mult71 ( .A(I71),
            .B(W71),
            .PRODUCT(P71),
            .rst(rst),
            .clk(clk));
    mult mult72 ( .A(I72),
            .B(W72),
            .PRODUCT(P72),
            .rst(rst),
            .clk(clk));
    mult mult73 ( .A(I73),
            .B(W73),
            .PRODUCT(P73),
            .rst(rst),
            .clk(clk));
    mult mult74 ( .A(I74),
            .B(W74),
            .PRODUCT(P74),
            .rst(rst),
            .clk(clk));
    mult mult75 ( .A(I75),
            .B(W75),
            .PRODUCT(P75),
            .rst(rst),
            .clk(clk));
    mult mult76 ( .A(I76),
            .B(W76),
            .PRODUCT(P76),
            .rst(rst),
            .clk(clk));
    mult mult77 ( .A(I77),
            .B(W77),
            .PRODUCT(P77),
            .rst(rst),
            .clk(clk));
    mult mult78 ( .A(I78),
            .B(W78),
            .PRODUCT(P78),
            .rst(rst),
            .clk(clk));
    mult mult79 ( .A(I79),
            .B(W79),
            .PRODUCT(P79),
            .rst(rst),
            .clk(clk));
    mult mult80 ( .A(I80),
            .B(W80),
            .PRODUCT(P80),
            .rst(rst),
            .clk(clk));
    mult mult81 ( .A(I81),
            .B(W81),
            .PRODUCT(P81),
            .rst(rst),
            .clk(clk));
    mult mult82 ( .A(I82),
            .B(W82),
            .PRODUCT(P82),
            .rst(rst),
            .clk(clk));
    mult mult83 ( .A(I83),
            .B(W83),
            .PRODUCT(P83),
            .rst(rst),
            .clk(clk));
    mult mult84 ( .A(I84),
            .B(W84),
            .PRODUCT(P84),
            .rst(rst),
            .clk(clk));
    mult mult85 ( .A(I85),
            .B(W85),
            .PRODUCT(P85),
            .rst(rst),
            .clk(clk));
    mult mult86 ( .A(I86),
            .B(W86),
            .PRODUCT(P86),
            .rst(rst),
            .clk(clk));
    mult mult87 ( .A(I87),
            .B(W87),
            .PRODUCT(P87),
            .rst(rst),
            .clk(clk));
    mult mult88 ( .A(I88),
            .B(W88),
            .PRODUCT(P88),
            .rst(rst),
            .clk(clk));
    mult mult89 ( .A(I89),
            .B(W89),
            .PRODUCT(P89),
            .rst(rst),
            .clk(clk));
    mult mult90 ( .A(I90),
            .B(W90),
            .PRODUCT(P90),
            .rst(rst),
            .clk(clk));
    mult mult91 ( .A(I91),
            .B(W91),
            .PRODUCT(P91),
            .rst(rst),
            .clk(clk));
    mult mult92 ( .A(I92),
            .B(W92),
            .PRODUCT(P92),
            .rst(rst),
            .clk(clk));
    mult mult93 ( .A(I93),
            .B(W93),
            .PRODUCT(P93),
            .rst(rst),
            .clk(clk));
    mult mult94 ( .A(I94),
            .B(W94),
            .PRODUCT(P94),
            .rst(rst),
            .clk(clk));
    mult mult95 ( .A(I95),
            .B(W95),
            .PRODUCT(P95),
            .rst(rst),
            .clk(clk));
    mult mult96 ( .A(I96),
            .B(W96),
            .PRODUCT(P96),
            .rst(rst),
            .clk(clk));
    mult mult97 ( .A(I97),
            .B(W97),
            .PRODUCT(P97),
            .rst(rst),
            .clk(clk));
    mult mult98 ( .A(I98),
            .B(W98),
            .PRODUCT(P98),
            .rst(rst),
            .clk(clk));

// layer2 10 macs

    mult mult1_2 (.A(I_hidden),
            .B(W1_2),
            .PRODUCT(P1_2),
            .rst(rst),
            .clk(clk));
    mult mult2_2 (.A(I_hidden),
            .B(W2_2),
            .PRODUCT(P2_2),
            .rst(rst),
            .clk(clk));
    mult mult3_2 (.A(I_hidden),
            .B(W3_2),
            .PRODUCT(P3_2),
            .rst(rst),
            .clk(clk));
    mult mult4_2 (.A(I_hidden),
            .B(W4_2),
            .PRODUCT(P4_2),
            .rst(rst),
            .clk(clk));
    mult mult5_2 (.A(I_hidden),
            .B(W5_2),
            .PRODUCT(P5_2),
            .rst(rst),
            .clk(clk));
    mult mult6_2 (.A(I_hidden),
            .B(W6_2),
            .PRODUCT(P6_2),
            .rst(rst),
            .clk(clk));
    mult mult7_2 (.A(I_hidden),
            .B(W7_2),
            .PRODUCT(P7_2),
            .rst(rst),
            .clk(clk));
    mult mult8_2 (.A(I_hidden),
            .B(W8_2),
            .PRODUCT(P8_2),
            .rst(rst),
            .clk(clk));
    mult mult9_2 (.A(I_hidden),
            .B(W9_2),
            .PRODUCT(P9_2),
            .rst(rst),
            .clk(clk));
    mult mult10_2 (.A(I_hidden),
            .B(W10_2),
            .PRODUCT(P10_2),
            .rst(rst),
            .clk(clk));





    assign output1 = P1;
    assign output2 = P2;
    assign output3 = P3;
    assign output4 = P4;
    assign output5 = P5;
    assign output6 = P6;
    assign output7 = P7;
    assign output8 = P8;
    assign output9 = P9;
    assign output10 = P10;
    assign output11 = P11;
    assign output12 = P12;
    assign output13 = P13;
    assign output14 = P14;
    assign output15 = P15;
    assign output16 = P16;
    assign output17 = P17;
    assign output18 = P18;
    assign output19 = P19;
    assign output20 = P20;
    assign output21 = P21;
    assign output22 = P22;
    assign output23 = P23;
    assign output24 = P24;
    assign output25 = P25;
    assign output26 = P26;
    assign output27 = P27;
    assign output28 = P28;
    assign output29 = P29;
    assign output30 = P30;
    assign output31 = P31;
    assign output32 = P32;
    assign output33 = P33;
    assign output34 = P34;
    assign output35 = P35;
    assign output36 = P36;
    assign output37 = P37;
    assign output38 = P38;
    assign output39 = P39;
    assign output40 = P40;
    assign output41 = P41;
    assign output42 = P42;
    assign output43 = P43;
    assign output44 = P44;
    assign output45 = P45;
    assign output46 = P46;
    assign output47 = P47;
    assign output48 = P48;
    assign output49 = P49;
    assign output50 = P50;
    assign output51 = P51;
    assign output52 = P52;
    assign output53 = P53;
    assign output54 = P54;
    assign output55 = P55;
    assign output56 = P56;
    assign output57 = P57;
    assign output58 = P58;
    assign output59 = P59;
    assign output60 = P60;
    assign output61 = P61;
    assign output62 = P62;
    assign output63 = P63;
    assign output64 = P64;
    assign output65 = P65;
    assign output66 = P66;
    assign output67 = P67;
    assign output68 = P68;
    assign output69 = P69;
    assign output70 = P70;
    assign output71 = P71;
    assign output72 = P72;
    assign output73 = P73;
    assign output74 = P74;
    assign output75 = P75;
    assign output76 = P76;
    assign output77 = P77;
    assign output78 = P78;
    assign output79 = P79;
    assign output80 = P80;
    assign output81 = P81;
    assign output82 = P82;
    assign output83 = P83;
    assign output84 = P84;
    assign output85 = P85;
    assign output86 = P86;
    assign output87 = P87;
    assign output88 = P88;
    assign output89 = P89;
    assign output90 = P90;
    assign output91 = P91;
    assign output92 = P92;
    assign output93 = P93;
    assign output94 = P94;
    assign output95 = P95;
    assign output96 = P96;
    assign output97 = P97;
    assign output98 = P98;

    //layer2 output
    assign output1_2 = P1_2;
    assign output2_2 = P2_2;
    assign output3_2 = P3_2;
    assign output4_2 = P4_2;
    assign output5_2 = P5_2;
    assign output6_2 = P6_2;
    assign output7_2 = P7_2;
    assign output8_2 = P8_2;
    assign output9_2 = P9_2;
    assign output10_2 = P10_2;


endmodule

module mult (clk, rst, A, B, PRODUCT);
  input clk;
  input rst;
  input signed [15:0]A, B;
  output signed [31:0]PRODUCT;
  reg signed [31:0] PRODUCT;
  //reg [8:0]s1;
  //reg [7:0]s2;
  reg [15:0]x1,x2;

always @(posedge clk ) begin
    if (rst) begin
      PRODUCT = 0;
	//s1 =0;
	//s2 =0;
        x1 = 0;
        x2 = 0;
    end else begin
        x1 =((A[15]==0)?{1'b0,A[14:0]}:{1'b0,~(A[14:0]-1'b1)});
        x2 =((B[15]==0)?{1'b0,B[14:0]}:{1'b0,~(B[14:0]-1'b1)});
        PRODUCT=
              (A[15]^B[15]==0)?
              (
                (x2[0]? {15'b0,x1[15:0]}:      32'b0)+
                (x2[1]? {14'b0,x1[15:0], 1'b0}:32'b0)+
                (x2[2]? {13'b0,x1[15:0], 2'b0}:32'b0)+
                (x2[3]? {12'b0,x1[15:0], 3'b0}:32'b0)+
                (x2[4]? {11'b0,x1[15:0], 4'b0}:32'b0)+
                (x2[5]? {10'b0,x1[15:0], 5'b0}:32'b0)+
                (x2[6]? {9 'b0,x1[15:0], 6'b0}:32'b0)+
                (x2[7]? {8 'b0,x1[15:0], 7'b0}:32'b0)+
                (x2[8]? {7 'b0,x1[15:0], 8'b0}:32'b0)+
                (x2[9]? {6 'b0,x1[15:0], 9'b0}:32'b0)+
                (x2[10]?{5 'b0,x1[15:0],10'b0}:32'b0)+
                (x2[11]?{4 'b0,x1[15:0],11'b0}:32'b0)+
                (x2[12]?{3 'b0,x1[15:0],12'b0}:32'b0)+
                (x2[13]?{2 'b0,x1[15:0],13'b0}:32'b0)+
                (x2[14]?{1 'b0,x1[15:0],14'b0}:32'b0)+
                (x2[15]?{      x1[15:0],15'b0}:32'b0)
              ):(~(
                (x2[0]? {15'b0,x1[15:0]}:      32'b0)+
                (x2[1]? {14'b0,x1[15:0], 1'b0}:32'b0)+
                (x2[2]? {13'b0,x1[15:0], 2'b0}:32'b0)+
                (x2[3]? {12'b0,x1[15:0], 3'b0}:32'b0)+
                (x2[4]? {11'b0,x1[15:0], 4'b0}:32'b0)+
                (x2[5]? {10'b0,x1[15:0], 5'b0}:32'b0)+
                (x2[6]? {9 'b0,x1[15:0], 6'b0}:32'b0)+
                (x2[7]? {8 'b0,x1[15:0], 7'b0}:32'b0)+
                (x2[8]? {7 'b0,x1[15:0], 8'b0}:32'b0)+
                (x2[9]? {6 'b0,x1[15:0], 9'b0}:32'b0)+
                (x2[10]?{5 'b0,x1[15:0],10'b0}:32'b0)+
                (x2[11]?{4 'b0,x1[15:0],11'b0}:32'b0)+
                (x2[12]?{3 'b0,x1[15:0],12'b0}:32'b0)+
                (x2[13]?{2 'b0,x1[15:0],13'b0}:32'b0)+
                (x2[14]?{1 'b0,x1[15:0],14'b0}:32'b0)+
                (x2[15]?{      x1[15:0],15'b0}:32'b0))   
              );
        PRODUCT[31]=A[15]^B[15];
        PRODUCT=PRODUCT[31]?PRODUCT+1'b1:PRODUCT;
        //PRODUCT <= A*B;
    end
  end
endmodule





