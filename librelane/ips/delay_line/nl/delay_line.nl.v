module delay_line (clk,
    clk_delayed,
    reset,
    sel,
    trim);
 input clk;
 output clk_delayed;
 input reset;
 input [2:0] sel;
 input [7:0] trim;

 wire _0_;
 wire _1_;
 wire net12;
 wire \dstage[0].id.d0 ;
 wire \dstage[0].id.d1 ;
 wire net14;
 wire \dstage[0].id.delaybuf0.A ;
 wire \dstage[0].id.delaybuf0.X ;
 wire \dstage[0].id.delayen0.Z ;
 wire \dstage[0].id.delayen0.te_b ;
 wire \dstage[0].id.delayen1.te_b ;
 wire \dstage[1].id.d0 ;
 wire \dstage[1].id.d1 ;
 wire net16;
 wire \dstage[1].id.delaybuf0.X ;
 wire \dstage[1].id.delayen0.Z ;
 wire \dstage[1].id.delayen0.te_b ;
 wire \dstage[1].id.delayen1.te_b ;
 wire \dstage[2].id.d0 ;
 wire \dstage[2].id.d1 ;
 wire net17;
 wire \dstage[2].id.delaybuf0.X ;
 wire \dstage[2].id.delayen0.Z ;
 wire \dstage[2].id.delayen0.te_b ;
 wire \dstage[2].id.delayen1.te_b ;
 wire \dstage[3].id.d0 ;
 wire \dstage[3].id.d1 ;
 wire \dstage[0].id.delayen0.Z_regs ;
 wire \dstage[3].id.delaybuf0.X ;
 wire \dstage[3].id.delayen0.Z ;
 wire \dstage[3].id.delayen0.te_b ;
 wire \dstage[3].id.delayen1.te_b ;
 wire \phase_taps[0].genblk1.ibuf_tap_even.X ;
 wire net15;
 wire \phase_taps[2].genblk1.ibuf_tap_even.X ;
 wire net18;
 wire \phase_taps[4].genblk1.ibuf_tap_even.X ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire \u_delay_mux.clk_pre ;
 wire \u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.TE_B ;
 wire net13;
 wire \dstage[2].id.delayen0.Z_regs ;
 wire \clknet_0_dstage[0].id.delaybuf0.A ;
 wire \clknet_1_0__leaf_dstage[0].id.delaybuf0.A ;
 wire \clknet_1_1__leaf_dstage[0].id.delaybuf0.A ;
 wire \clknet_0_dstage[0].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[0].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[0].id.delaybuf0.X ;
 wire \clknet_0_dstage[0].id.delayen0.Z ;
 wire \clknet_1_0__leaf_dstage[0].id.delayen0.Z ;
 wire \clknet_0_dstage[0].id.delayen0.Z_regs ;
 wire \clknet_1_0__leaf_dstage[0].id.delayen0.Z_regs ;
 wire \clknet_0_dstage[1].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[1].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[1].id.delaybuf0.X ;
 wire \clknet_0_dstage[1].id.delayen0.Z ;
 wire \clknet_1_0__leaf_dstage[1].id.delayen0.Z ;
 wire \clknet_1_1__leaf_dstage[1].id.delayen0.Z ;
 wire \clknet_0_dstage[2].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[2].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[2].id.delaybuf0.X ;
 wire \clknet_0_dstage[2].id.delayen0.Z ;
 wire \clknet_1_0__leaf_dstage[2].id.delayen0.Z ;
 wire \clknet_0_dstage[2].id.delayen0.Z_regs ;
 wire \clknet_1_0__leaf_dstage[2].id.delayen0.Z_regs ;
 wire \clknet_0_dstage[3].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[3].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[3].id.delaybuf0.X ;

 sg13g2_inv_1 _2_ (.Y(\u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.TE_B ),
    .A(net3));
 sg13g2_nor2_1 _3_ (.A(net2),
    .B(net3),
    .Y(_0_));
 sg13g2_nand2b_1 _4_ (.Y(\u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.TE_B ),
    .B(_0_),
    .A_N(net1));
 sg13g2_nand2_1 _5_ (.Y(\u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.TE_B ),
    .A(net1),
    .B(_0_));
 sg13g2_nor2b_1 _6_ (.A(net3),
    .B_N(net2),
    .Y(_1_));
 sg13g2_nand2b_1 _7_ (.Y(\u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.TE_B ),
    .B(_1_),
    .A_N(net1));
 sg13g2_nand2_1 _8_ (.Y(\u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.TE_B ),
    .A(net1),
    .B(_1_));
 sg13g2_buf_2 \dstage[0].id.delaybuf0.u_buf  (.A(\clknet_1_1__leaf_dstage[0].id.delaybuf0.A ),
    .X(\dstage[0].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[0].id.delaybuf1.u_buf  (.A(\clknet_1_0__leaf_dstage[0].id.delaybuf0.X ),
    .X(\dstage[0].id.d0 ));
 sg13g2_einvn_4 \dstage[0].id.delayen0.u_einv  (.Z(\dstage[0].id.delayen0.Z ),
    .A(net13),
    .TE_B(\dstage[0].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[0].id.delayen0.u_inv_te  (.Y(\dstage[0].id.delayen0.te_b ),
    .A(net4));
 sg13g2_einvn_4 \dstage[0].id.delayen1.u_einv  (.Z(\dstage[0].id.d1 ),
    .A(\dstage[0].id.d0 ),
    .TE_B(\dstage[0].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[0].id.delayen1.u_inv_te  (.Y(\dstage[0].id.delayen1.te_b ),
    .A(net8));
 sg13g2_einvn_8 \dstage[0].id.delayenb0.u_einv  (.A(\clknet_1_0__leaf_dstage[0].id.delaybuf0.X ),
    .Z(\dstage[0].id.delayen0.Z ),
    .TE_B(net4));
 sg13g2_einvn_4 \dstage[0].id.delayenb1.u_einv  (.Z(\dstage[0].id.d1 ),
    .A(\clknet_1_1__leaf_dstage[0].id.delaybuf0.X ),
    .TE_B(net8));
 sg13g2_inv_4 \phase_taps[1].genblk1.iinv_tap_odd.u_inv_14  (.A(\clknet_1_0__leaf_dstage[0].id.delayen0.Z_regs ),
    .Y(net14));
 sg13g2_buf_2 \dstage[1].id.delaybuf0.u_buf  (.A(\clknet_1_0__leaf_dstage[0].id.delayen0.Z ),
    .X(\dstage[1].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[1].id.delaybuf1.u_buf  (.A(\clknet_1_1__leaf_dstage[1].id.delaybuf0.X ),
    .X(\dstage[1].id.d0 ));
 sg13g2_einvn_4 \dstage[1].id.delayen0.u_einv  (.Z(\dstage[1].id.delayen0.Z ),
    .A(net15),
    .TE_B(\dstage[1].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[1].id.delayen0.u_inv_te  (.Y(\dstage[1].id.delayen0.te_b ),
    .A(net5));
 sg13g2_einvn_4 \dstage[1].id.delayen1.u_einv  (.Z(\dstage[1].id.d1 ),
    .A(\dstage[1].id.d0 ),
    .TE_B(\dstage[1].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[1].id.delayen1.u_inv_te  (.Y(\dstage[1].id.delayen1.te_b ),
    .A(net9));
 sg13g2_einvn_8 \dstage[1].id.delayenb0.u_einv  (.A(\clknet_1_0__leaf_dstage[1].id.delaybuf0.X ),
    .Z(\dstage[1].id.delayen0.Z ),
    .TE_B(net5));
 sg13g2_einvn_4 \dstage[1].id.delayenb1.u_einv  (.Z(\dstage[1].id.d1 ),
    .A(\clknet_1_0__leaf_dstage[1].id.delaybuf0.X ),
    .TE_B(net9));
 sg13g2_inv_1 \dstage[2].id.delayint0.u_inv_16  (.Y(net16),
    .A(\dstage[2].id.d1 ));
 sg13g2_buf_2 \dstage[2].id.delaybuf0.u_buf  (.A(\clknet_1_0__leaf_dstage[1].id.delayen0.Z ),
    .X(\dstage[2].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[2].id.delaybuf1.u_buf  (.A(\clknet_1_1__leaf_dstage[2].id.delaybuf0.X ),
    .X(\dstage[2].id.d0 ));
 sg13g2_einvn_4 \dstage[2].id.delayen0.u_einv  (.Z(\dstage[2].id.delayen0.Z ),
    .A(net16),
    .TE_B(\dstage[2].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[2].id.delayen0.u_inv_te  (.Y(\dstage[2].id.delayen0.te_b ),
    .A(net6));
 sg13g2_einvn_4 \dstage[2].id.delayen1.u_einv  (.Z(\dstage[2].id.d1 ),
    .A(\dstage[2].id.d0 ),
    .TE_B(\dstage[2].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[2].id.delayen1.u_inv_te  (.Y(\dstage[2].id.delayen1.te_b ),
    .A(net10));
 sg13g2_einvn_8 \dstage[2].id.delayenb0.u_einv  (.A(\clknet_1_0__leaf_dstage[2].id.delaybuf0.X ),
    .Z(\dstage[2].id.delayen0.Z ),
    .TE_B(net6));
 sg13g2_einvn_4 \dstage[2].id.delayenb1.u_einv  (.Z(\dstage[2].id.d1 ),
    .A(\clknet_1_0__leaf_dstage[2].id.delaybuf0.X ),
    .TE_B(net10));
 sg13g2_inv_4 \phase_taps[3].genblk1.iinv_tap_odd.u_inv_17  (.A(\clknet_1_0__leaf_dstage[2].id.delayen0.Z_regs ),
    .Y(net17));
 sg13g2_buf_2 \dstage[3].id.delaybuf0.u_buf  (.A(\clknet_1_0__leaf_dstage[2].id.delayen0.Z ),
    .X(\dstage[3].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[3].id.delaybuf1.u_buf  (.A(\clknet_1_0__leaf_dstage[3].id.delaybuf0.X ),
    .X(\dstage[3].id.d0 ));
 sg13g2_einvn_4 \dstage[3].id.delayen0.u_einv  (.Z(\dstage[3].id.delayen0.Z ),
    .A(net18),
    .TE_B(\dstage[3].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[3].id.delayen0.u_inv_te  (.Y(\dstage[3].id.delayen0.te_b ),
    .A(net7));
 sg13g2_einvn_4 \dstage[3].id.delayen1.u_einv  (.Z(\dstage[3].id.d1 ),
    .A(\dstage[3].id.d0 ),
    .TE_B(\dstage[3].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[3].id.delayen1.u_inv_te  (.Y(\dstage[3].id.delayen1.te_b ),
    .A(net11));
 sg13g2_einvn_8 \dstage[3].id.delayenb0.u_einv  (.A(\clknet_1_1__leaf_dstage[3].id.delaybuf0.X ),
    .Z(\dstage[3].id.delayen0.Z ),
    .TE_B(net7));
 sg13g2_einvn_4 \dstage[3].id.delayenb1.u_einv  (.Z(\dstage[3].id.d1 ),
    .A(\clknet_1_0__leaf_dstage[3].id.delaybuf0.X ),
    .TE_B(net11));
 sg13g2_buf_16 clkbuf_regs_0_clk (.X(\dstage[0].id.delayen0.Z_regs ),
    .A(\dstage[0].id.delayen0.Z ));
 sg13g2_buf_4 \phase_taps[0].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[0].genblk1.ibuf_tap_even.X ),
    .A(\clknet_1_0__leaf_dstage[0].id.delaybuf0.A ));
 sg13g2_inv_1 \dstage[1].id.delayint0.u_inv_15  (.Y(net15),
    .A(\dstage[1].id.d1 ));
 sg13g2_buf_4 \phase_taps[2].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[2].genblk1.ibuf_tap_even.X ),
    .A(\clknet_1_1__leaf_dstage[1].id.delayen0.Z ));
 sg13g2_inv_1 \dstage[3].id.delayint0.u_inv_18  (.Y(net18),
    .A(\dstage[3].id.d1 ));
 sg13g2_buf_4 \phase_taps[4].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[4].genblk1.ibuf_tap_even.X ),
    .A(\dstage[3].id.delayen0.Z ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[0].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(net14),
    .TE_B(\u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[2].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(net17),
    .TE_B(\u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[4].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.TE_B ));
 sg13g2_buf_16 \u_delay_mux.u_clkbuf.u_buf  (.X(net12),
    .A(\u_delay_mux.clk_pre ));
 sg13g2_buf_2 \u_inbuf.u_buf  (.A(clk),
    .X(\dstage[0].id.delaybuf0.A ));
 sg13g2_buf_1 input1 (.A(sel[0]),
    .X(net1));
 sg13g2_buf_1 input2 (.A(sel[1]),
    .X(net2));
 sg13g2_buf_1 input3 (.A(sel[2]),
    .X(net3));
 sg13g2_buf_1 input4 (.A(trim[0]),
    .X(net4));
 sg13g2_buf_1 input5 (.A(trim[1]),
    .X(net5));
 sg13g2_buf_1 input6 (.A(trim[2]),
    .X(net6));
 sg13g2_buf_1 input7 (.A(trim[3]),
    .X(net7));
 sg13g2_buf_1 input8 (.A(trim[4]),
    .X(net8));
 sg13g2_buf_1 input9 (.A(trim[5]),
    .X(net9));
 sg13g2_buf_1 input10 (.A(trim[6]),
    .X(net10));
 sg13g2_buf_1 input11 (.A(trim[7]),
    .X(net11));
 sg13g2_buf_1 output12 (.A(net12),
    .X(clk_delayed));
 sg13g2_inv_1 \dstage[0].id.delayint0.u_inv_13  (.Y(net13),
    .A(\dstage[0].id.d1 ));
 sg13g2_buf_16 clkbuf_regs_1_clk (.X(\dstage[2].id.delayen0.Z_regs ),
    .A(\dstage[2].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[0].id.delaybuf0.A  (.X(\clknet_0_dstage[0].id.delaybuf0.A ),
    .A(\dstage[0].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[0].id.delaybuf0.A  (.X(\clknet_1_0__leaf_dstage[0].id.delaybuf0.A ),
    .A(\clknet_0_dstage[0].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[0].id.delaybuf0.A  (.X(\clknet_1_1__leaf_dstage[0].id.delaybuf0.A ),
    .A(\clknet_0_dstage[0].id.delaybuf0.A ));
 sg13g2_inv_1 clkload0 (.A(\clknet_1_1__leaf_dstage[0].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_0_dstage[0].id.delaybuf0.X  (.X(\clknet_0_dstage[0].id.delaybuf0.X ),
    .A(\dstage[0].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[0].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[0].id.delaybuf0.X ),
    .A(\clknet_0_dstage[0].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[0].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[0].id.delaybuf0.X ),
    .A(\clknet_0_dstage[0].id.delaybuf0.X ));
 sg13g2_inv_4 clkload1 (.A(\clknet_1_1__leaf_dstage[0].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_0_dstage[0].id.delayen0.Z  (.X(\clknet_0_dstage[0].id.delayen0.Z ),
    .A(\dstage[0].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[0].id.delayen0.Z  (.X(\clknet_1_0__leaf_dstage[0].id.delayen0.Z ),
    .A(\clknet_0_dstage[0].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[0].id.delayen0.Z_regs  (.X(\clknet_0_dstage[0].id.delayen0.Z_regs ),
    .A(\dstage[0].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[0].id.delayen0.Z_regs  (.X(\clknet_1_0__leaf_dstage[0].id.delayen0.Z_regs ),
    .A(\clknet_0_dstage[0].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_0_dstage[1].id.delaybuf0.X  (.X(\clknet_0_dstage[1].id.delaybuf0.X ),
    .A(\dstage[1].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[1].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[1].id.delaybuf0.X ),
    .A(\clknet_0_dstage[1].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[1].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[1].id.delaybuf0.X ),
    .A(\clknet_0_dstage[1].id.delaybuf0.X ));
 sg13g2_inv_8 clkload2 (.A(\clknet_1_1__leaf_dstage[1].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_0_dstage[1].id.delayen0.Z  (.X(\clknet_0_dstage[1].id.delayen0.Z ),
    .A(\dstage[1].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[1].id.delayen0.Z  (.X(\clknet_1_0__leaf_dstage[1].id.delayen0.Z ),
    .A(\clknet_0_dstage[1].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[1].id.delayen0.Z  (.X(\clknet_1_1__leaf_dstage[1].id.delayen0.Z ),
    .A(\clknet_0_dstage[1].id.delayen0.Z ));
 sg13g2_inv_1 clkload3 (.A(\clknet_1_0__leaf_dstage[1].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[2].id.delaybuf0.X  (.X(\clknet_0_dstage[2].id.delaybuf0.X ),
    .A(\dstage[2].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[2].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[2].id.delaybuf0.X ),
    .A(\clknet_0_dstage[2].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[2].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[2].id.delaybuf0.X ),
    .A(\clknet_0_dstage[2].id.delaybuf0.X ));
 sg13g2_inv_8 clkload4 (.A(\clknet_1_1__leaf_dstage[2].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_0_dstage[2].id.delayen0.Z  (.X(\clknet_0_dstage[2].id.delayen0.Z ),
    .A(\dstage[2].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[2].id.delayen0.Z  (.X(\clknet_1_0__leaf_dstage[2].id.delayen0.Z ),
    .A(\clknet_0_dstage[2].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[2].id.delayen0.Z_regs  (.X(\clknet_0_dstage[2].id.delayen0.Z_regs ),
    .A(\dstage[2].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[2].id.delayen0.Z_regs  (.X(\clknet_1_0__leaf_dstage[2].id.delayen0.Z_regs ),
    .A(\clknet_0_dstage[2].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_0_dstage[3].id.delaybuf0.X  (.X(\clknet_0_dstage[3].id.delaybuf0.X ),
    .A(\dstage[3].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[3].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[3].id.delaybuf0.X ),
    .A(\clknet_0_dstage[3].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[3].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[3].id.delaybuf0.X ),
    .A(\clknet_0_dstage[3].id.delaybuf0.X ));
 sg13g2_inv_2 clkload5 (.A(\clknet_1_0__leaf_dstage[3].id.delaybuf0.X ));
 sg13g2_decap_8 FILLER_0_0 ();
 sg13g2_decap_8 FILLER_0_7 ();
 sg13g2_fill_1 FILLER_0_35 ();
 sg13g2_fill_1 FILLER_0_40 ();
 sg13g2_fill_2 FILLER_0_70 ();
 sg13g2_decap_8 FILLER_1_0 ();
 sg13g2_decap_4 FILLER_1_7 ();
 sg13g2_fill_2 FILLER_1_11 ();
 sg13g2_fill_2 FILLER_1_97 ();
 sg13g2_fill_1 FILLER_1_112 ();
 sg13g2_decap_8 FILLER_2_0 ();
 sg13g2_decap_4 FILLER_2_7 ();
 sg13g2_fill_1 FILLER_2_11 ();
 sg13g2_fill_2 FILLER_2_111 ();
 sg13g2_fill_2 FILLER_3_0 ();
 sg13g2_fill_2 FILLER_3_30 ();
 sg13g2_decap_8 FILLER_4_4 ();
 sg13g2_fill_1 FILLER_4_11 ();
 sg13g2_fill_2 FILLER_4_68 ();
 sg13g2_fill_1 FILLER_4_108 ();
 sg13g2_fill_2 FILLER_5_25 ();
 sg13g2_fill_1 FILLER_5_27 ();
 sg13g2_fill_1 FILLER_5_53 ();
 sg13g2_decap_8 FILLER_6_0 ();
 sg13g2_decap_8 FILLER_6_7 ();
 sg13g2_fill_1 FILLER_6_14 ();
 sg13g2_fill_1 FILLER_6_112 ();
 sg13g2_decap_4 FILLER_7_4 ();
 sg13g2_fill_2 FILLER_7_8 ();
 sg13g2_fill_2 FILLER_7_19 ();
 sg13g2_decap_8 FILLER_8_4 ();
 sg13g2_decap_8 FILLER_8_11 ();
 sg13g2_decap_4 FILLER_8_18 ();
 sg13g2_fill_1 FILLER_9_50 ();
 sg13g2_fill_2 FILLER_9_76 ();
 sg13g2_decap_8 FILLER_10_4 ();
 sg13g2_decap_4 FILLER_10_11 ();
 sg13g2_fill_1 FILLER_10_15 ();
 sg13g2_decap_8 FILLER_11_0 ();
 sg13g2_decap_8 FILLER_11_7 ();
 sg13g2_fill_2 FILLER_11_14 ();
 sg13g2_fill_1 FILLER_11_50 ();
 sg13g2_fill_1 FILLER_11_82 ();
 sg13g2_decap_4 FILLER_12_0 ();
 sg13g2_fill_2 FILLER_12_4 ();
endmodule
