`timescale 1ns / 1ps
module top_tb();
    reg clk;
    initial clk=1;
    always #5 clk = ~clk;

    reg rst;
    reg re_en;
    reg [15:0]I0;
    initial begin
      rst=1;
      re_en=1;
      I0=16'b0;
      #13 rst=0;
    end

    wire [3:0] addr_img_I;
    wire [9:0] addr_byte_I_byte_W1;
    wire [7:0] addr_img_W1_byte_W2;
    wire [15:0] image_input1, image_input2, image_input3, image_input4, image_input5, image_input6, image_input7, image_input8, image_input9, image_input10, image_input11, image_input12, image_input13, image_input14, image_input15, image_input16, image_input17, image_input18, image_input19, image_input20, image_input21, image_input22, image_input23, image_input24, image_input25, image_input26, image_input27, image_input28, image_input29, image_input30, image_input31, image_input32, image_input33, image_input34, image_input35, image_input36, image_input37, image_input38, image_input39, image_input40, image_input41, image_input42, image_input43, image_input44, image_input45, image_input46, image_input47, image_input48, image_input49, image_input50, image_input51, image_input52, image_input53, image_input54, image_input55, image_input56, image_input57, image_input58, image_input59, image_input60, image_input61, image_input62, image_input63, image_input64, image_input65, image_input66, image_input67, image_input68, image_input69, image_input70, image_input71, image_input72, image_input73, image_input74, image_input75, image_input76, image_input77, image_input78, image_input79, image_input80, image_input81, image_input82, image_input83, image_input84, image_input85, image_input86, image_input87, image_input88, image_input89, image_input90, image_input91, image_input92, image_input93, image_input94, image_input95, image_input96, image_input97, image_input98;

    wire [15:0] weight1_input1, weight1_input2, weight1_input3, weight1_input4, weight1_input5, weight1_input6, weight1_input7, weight1_input8, weight1_input9, weight1_input10, weight1_input11, weight1_input12, weight1_input13, weight1_input14, weight1_input15, weight1_input16, weight1_input17, weight1_input18, weight1_input19, weight1_input20, weight1_input21, weight1_input22, weight1_input23, weight1_input24, weight1_input25, weight1_input26, weight1_input27, weight1_input28, weight1_input29, weight1_input30, weight1_input31, weight1_input32, weight1_input33, weight1_input34, weight1_input35, weight1_input36, weight1_input37, weight1_input38, weight1_input39, weight1_input40, weight1_input41, weight1_input42, weight1_input43, weight1_input44, weight1_input45, weight1_input46, weight1_input47, weight1_input48, weight1_input49, weight1_input50, weight1_input51, weight1_input52, weight1_input53, weight1_input54, weight1_input55, weight1_input56, weight1_input57, weight1_input58, weight1_input59, weight1_input60, weight1_input61, weight1_input62, weight1_input63, weight1_input64, weight1_input65, weight1_input66, weight1_input67, weight1_input68, weight1_input69, weight1_input70, weight1_input71, weight1_input72, weight1_input73, weight1_input74, weight1_input75, weight1_input76, weight1_input77, weight1_input78, weight1_input79, weight1_input80, weight1_input81, weight1_input82, weight1_input83, weight1_input84, weight1_input85, weight1_input86, weight1_input87, weight1_input88, weight1_input89, weight1_input90, weight1_input91, weight1_input92, weight1_input93, weight1_input94, weight1_input95, weight1_input96, weight1_input97, weight1_input98;

    wire [15:0] weight2_input1, weight2_input2, weight2_input3, weight2_input4, weight2_input5, weight2_input6, weight2_input7, weight2_input8, weight2_input9, weight2_input10;

    wire adder_ready, done, lut_layer_done, Y_sample;
    wire [15:0] lut_output1,lut_output2;

    top dut(
		clk,
		rst,
		image_input1, image_input2, image_input3, image_input4, image_input5, image_input6, image_input7, image_input8, image_input9, image_input10, image_input11, image_input12, image_input13, image_input14, image_input15, image_input16, image_input17, image_input18, image_input19, image_input20, image_input21, image_input22, image_input23, image_input24, image_input25, image_input26, image_input27, image_input28, image_input29, image_input30, image_input31, image_input32, image_input33, image_input34, image_input35, image_input36, image_input37, image_input38, image_input39, image_input40, image_input41, image_input42, image_input43, image_input44, image_input45, image_input46, image_input47, image_input48, image_input49, image_input50, image_input51, image_input52, image_input53, image_input54, image_input55, image_input56, image_input57, image_input58, image_input59, image_input60, image_input61, image_input62, image_input63, image_input64, image_input65, image_input66, image_input67, image_input68, image_input69, image_input70, image_input71, image_input72, image_input73, image_input74, image_input75, image_input76, image_input77, image_input78, image_input79, image_input80, image_input81, image_input82, image_input83, image_input84, image_input85, image_input86, image_input87, image_input88, image_input89, image_input90, image_input91, image_input92, image_input93, image_input94, image_input95, image_input96, image_input97, image_input98,

		weight1_input1, weight1_input2, weight1_input3, weight1_input4, weight1_input5, weight1_input6, weight1_input7, weight1_input8, weight1_input9, weight1_input10, weight1_input11, weight1_input12, weight1_input13, weight1_input14, weight1_input15, weight1_input16, weight1_input17, weight1_input18, weight1_input19, weight1_input20, weight1_input21, weight1_input22, weight1_input23, weight1_input24, weight1_input25, weight1_input26, weight1_input27, weight1_input28, weight1_input29, weight1_input30, weight1_input31, weight1_input32, weight1_input33, weight1_input34, weight1_input35, weight1_input36, weight1_input37, weight1_input38, weight1_input39, weight1_input40, weight1_input41, weight1_input42, weight1_input43, weight1_input44, weight1_input45, weight1_input46, weight1_input47, weight1_input48, weight1_input49, weight1_input50, weight1_input51, weight1_input52, weight1_input53, weight1_input54, weight1_input55, weight1_input56, weight1_input57, weight1_input58, weight1_input59, weight1_input60, weight1_input61, weight1_input62, weight1_input63, weight1_input64, weight1_input65, weight1_input66, weight1_input67, weight1_input68, weight1_input69, weight1_input70, weight1_input71, weight1_input72, weight1_input73, weight1_input74, weight1_input75, weight1_input76, weight1_input77, weight1_input78, weight1_input79, weight1_input80, weight1_input81, weight1_input82, weight1_input83, weight1_input84, weight1_input85, weight1_input86, weight1_input87, weight1_input88, weight1_input89, weight1_input90, weight1_input91, weight1_input92, weight1_input93, weight1_input94, weight1_input95, weight1_input96, weight1_input97, weight1_input98,

		weight2_input1, weight2_input2, weight2_input3, weight2_input4, weight2_input5, weight2_input6, weight2_input7, weight2_input8, weight2_input9, weight2_input10,

		adder_ready, done, lut_layer_done, Y_sample,
		addr_img_I, addr_byte_I_byte_W1, addr_img_W1_byte_W2,

		lut_output1, lut_output2
    );

     SRAM_IMG sram_img(
        .clk(clk),
        .re_en(re_en),
        .re_addr_byte(addr_byte_I_byte_W1),
        .re_addr_img(addr_img_I),
        .dout1(image_input1),
	    .dout2(image_input2),
	    .dout3(image_input3),
	    .dout4(image_input4),
	    .dout5(image_input5),
	    .dout6(image_input6),
	    .dout7(image_input7),
	    .dout8(image_input8),
	    .dout9(image_input9),
	    .dout10(image_input10),
	    .dout11(image_input11),
	    .dout12(image_input12),
	    .dout13(image_input13),
	    .dout14(image_input14),
	    .dout15(image_input15),
	    .dout16(image_input16),
	    .dout17(image_input17),
	    .dout18(image_input18),
	    .dout19(image_input19),
	    .dout20(image_input20),
	    .dout21(image_input21),
	    .dout22(image_input22),
	    .dout23(image_input23),
	    .dout24(image_input24),
	    .dout25(image_input25),
	    .dout26(image_input26),
	    .dout27(image_input27),
	    .dout28(image_input28),
	    .dout29(image_input29),
	    .dout30(image_input30),
	    .dout31(image_input31),
	    .dout32(image_input32),
	    .dout33(image_input33),
	    .dout34(image_input34),
	    .dout35(image_input35),
	    .dout36(image_input36),
	    .dout37(image_input37),
	    .dout38(image_input38),
	    .dout39(image_input39),
	    .dout40(image_input40),
	    .dout41(image_input41),
	    .dout42(image_input42),
	    .dout43(image_input43),
	    .dout44(image_input44),
	    .dout45(image_input45),
	    .dout46(image_input46),
	    .dout47(image_input47),
	    .dout48(image_input48),
	    .dout49(image_input49),
	    .dout50(image_input50),
	    .dout51(image_input51),
	    .dout52(image_input52),
	    .dout53(image_input53),
	    .dout54(image_input54),
	    .dout55(image_input55),
	    .dout56(image_input56),
	    .dout57(image_input57),
	    .dout58(image_input58),
	    .dout59(image_input59),
	    .dout60(image_input60),
	    .dout61(image_input61),
	    .dout62(image_input62),
	    .dout63(image_input63),
	    .dout64(image_input64),
	    .dout65(image_input65),
		.dout66(image_input66),
		.dout67(image_input67),
		.dout68(image_input68),
		.dout69(image_input69),
		.dout70(image_input70),
		.dout71(image_input71),
		.dout72(image_input72),
		.dout73(image_input73),
		.dout74(image_input74),
		.dout75(image_input75),
		.dout76(image_input76),
		.dout77(image_input77),
		.dout78(image_input78),
		.dout79(image_input79),
		.dout80(image_input80),
		.dout81(image_input81),
		.dout82(image_input82),
		.dout83(image_input83),
		.dout84(image_input84),
		.dout85(image_input85),
		.dout86(image_input86),
		.dout87(image_input87),
		.dout88(image_input88),
		.dout89(image_input89),
		.dout90(image_input90),
		.dout91(image_input91),
		.dout92(image_input92),
		.dout93(image_input93),
		.dout94(image_input94),
		.dout95(image_input95),
		.dout96(image_input96),
		.dout97(image_input97),
		.dout98(image_input98)
    );
    SRAM_WEIG1 sram_weig1(
        .clk(clk),
        .re_en(re_en),
        .re_addr_byte(addr_byte_I_byte_W1),
        .re_addr_img(addr_img_W1_byte_W2),
        .dout1(weight1_input1),
	    .dout2(weight1_input2),
	    .dout3(weight1_input3),
	    .dout4(weight1_input4),
	    .dout5(weight1_input5),
	    .dout6(weight1_input6),
	    .dout7(weight1_input7),
	    .dout8(weight1_input8),
	    .dout9(weight1_input9),
	    .dout10(weight1_input10),
	    .dout11(weight1_input11),
	    .dout12(weight1_input12),
	    .dout13(weight1_input13),
	    .dout14(weight1_input14),
	    .dout15(weight1_input15),
	    .dout16(weight1_input16),
	    .dout17(weight1_input17),
	    .dout18(weight1_input18),
	    .dout19(weight1_input19),
	    .dout20(weight1_input20),
	    .dout21(weight1_input21),
	    .dout22(weight1_input22),
	    .dout23(weight1_input23),
	    .dout24(weight1_input24),
	    .dout25(weight1_input25),
	    .dout26(weight1_input26),
	    .dout27(weight1_input27),
	    .dout28(weight1_input28),
	    .dout29(weight1_input29),
	    .dout30(weight1_input30),
	    .dout31(weight1_input31),
	    .dout32(weight1_input32),
	    .dout33(weight1_input33),
	    .dout34(weight1_input34),
	    .dout35(weight1_input35),
	    .dout36(weight1_input36),
	    .dout37(weight1_input37),
	    .dout38(weight1_input38),
	    .dout39(weight1_input39),
	    .dout40(weight1_input40),
	    .dout41(weight1_input41),
	    .dout42(weight1_input42),
	    .dout43(weight1_input43),
	    .dout44(weight1_input44),
	    .dout45(weight1_input45),
	    .dout46(weight1_input46),
	    .dout47(weight1_input47),
	    .dout48(weight1_input48),
	    .dout49(weight1_input49),
	    .dout50(weight1_input50),
	    .dout51(weight1_input51),
	    .dout52(weight1_input52),
	    .dout53(weight1_input53),
	    .dout54(weight1_input54),
	    .dout55(weight1_input55),
	    .dout56(weight1_input56),
	    .dout57(weight1_input57),
	    .dout58(weight1_input58),
	    .dout59(weight1_input59),
	    .dout60(weight1_input60),
	    .dout61(weight1_input61),
	    .dout62(weight1_input62),
	    .dout63(weight1_input63),
	    .dout64(weight1_input64),
	    .dout65(weight1_input65),
		.dout66(weight1_input66),
		.dout67(weight1_input67),
		.dout68(weight1_input68),
		.dout69(weight1_input69),
		.dout70(weight1_input70),
		.dout71(weight1_input71),
		.dout72(weight1_input72),
		.dout73(weight1_input73),
		.dout74(weight1_input74),
		.dout75(weight1_input75),
		.dout76(weight1_input76),
		.dout77(weight1_input77),
		.dout78(weight1_input78),
		.dout79(weight1_input79),
		.dout80(weight1_input80),
		.dout81(weight1_input81),
		.dout82(weight1_input82),
		.dout83(weight1_input83),
		.dout84(weight1_input84),
		.dout85(weight1_input85),
		.dout86(weight1_input86),
		.dout87(weight1_input87),
		.dout88(weight1_input88),
		.dout89(weight1_input89),
		.dout90(weight1_input90),
		.dout91(weight1_input91),
		.dout92(weight1_input92),
		.dout93(weight1_input93),
		.dout94(weight1_input94),
		.dout95(weight1_input95),
		.dout96(weight1_input96),
		.dout97(weight1_input97),
		.dout98(weight1_input98)

    );
    SRAM_WEIG2 sram_weig2(
        .clk(clk),
        .re_en(re_en),
        .re_addr_byte(addr_img_W1_byte_W2),
        .dout1(weight2_input1),
	    .dout2(weight2_input2),
	    .dout3(weight2_input3),
	    .dout4(weight2_input4),
	    .dout5(weight2_input5),
	    .dout6(weight2_input6),
	    .dout7(weight2_input7),
	    .dout8(weight2_input8),
	    .dout9(weight2_input9),
	    .dout10(weight2_input10)
    );
    

    always @ (done) if(done) #1000 $stop;

    integer fp_layer1bflut,fp_layer1aflut,fp_layer2bflut,fp_layer2aflut;
    initial begin
    fp_layer1bflut=$fopen("layer1bflut.txt","w");
    fp_layer1aflut=$fopen("layer1aflut.txt","w");
    fp_layer2bflut=$fopen("layer2bflut.txt","w");
    fp_layer2aflut=$fopen("layer2aflut.txt","w");
    if(!fp_layer2aflut) $stop;
    end

    always @(posedge clk ) begin
      #2 
      if(adder_ready) $fwrite(fp_layer1bflut,"%f\n",$signed(dut.adder_out1));
      //if(adder_ready) $fwrite(fp_layer1bflut,"%b\n",adder_out1);
      if(Y_sample) $fwrite(fp_layer1aflut,"%f\n",$signed(lut_output1));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out2));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out3));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out4));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out5));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out6));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out7));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out8));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out9));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out10));
      if(adder_ready && dut.N == 1) $fwrite(fp_layer2bflut,"%f\n",$signed(dut.adder_out11));
      if(lut_layer_done) $fwrite(fp_layer2aflut,"%f\n",$signed(lut_output2));

    end

endmodule // top_tb