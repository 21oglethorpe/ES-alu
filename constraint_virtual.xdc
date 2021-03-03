set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L11P_T1_SRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];

##Pmod Header JA (XADC)
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L21P_T3_DQS_AD14P_35 Sch=JA1_R_p
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L22P_T3_AD7P_35 Sch=JA2_R_P
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L24P_T3_AD15P_35 Sch=JA3_R_P
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L20P_T3_AD6P_35 Sch=JA4_R_P
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L21N_T3_DQS_AD14N_35 Sch=JA1_R_N
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L22N_T3_AD7N_35 Sch=JA2_R_N
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L24N_T3_AD15N_35 Sch=JA3_R_N
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L20N_T3_AD6N_35 Sch=JA4_R_N
