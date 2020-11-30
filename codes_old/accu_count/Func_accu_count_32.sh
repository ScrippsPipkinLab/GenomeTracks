#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' Memory_SRR4435495_flt_fDsft_flb_macs.bed_treat_pileup_srt.bdg > Memory_SRR4435495_flt_fDsft_flb_macs.bed_treat_pileup_srt.txt
