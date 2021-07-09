#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2017.4 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sun Jun 27 23:00:19 PKT 2021
# SW Build 2086221 on Fri Dec 15 20:54:30 MST 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto 4958d1400af54942a79790a12ad98b36 --incr --debug typical --relax --mt 8 -L xbip_utils_v3_0_8 -L c_reg_fd_v12_0_4 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_4 -L xbip_dsp48_addsub_v3_0_4 -L xbip_addsub_v3_0_4 -L c_addsub_v12_0_11 -L xbip_bram18k_v3_0_4 -L mult_gen_v12_0_13 -L axi_utils_v2_0_4 -L cordic_v6_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot new_sim_behav xil_defaultlib.new_sim xil_defaultlib.glbl -log elaborate.log
