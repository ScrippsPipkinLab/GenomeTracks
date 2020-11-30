#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' B2_169_2_flt_sft_macs.bed_treat_pileup_sorted_flb.bdg > B2_169_2_flt_sft_macs.bed_treat_pileup_sorted_flb.txt
