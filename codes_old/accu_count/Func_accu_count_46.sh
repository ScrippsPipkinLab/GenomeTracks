#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' SLEC_SRR4435522_flt_fDsft_flb_macs.bed_treat_pileup_srt.bdg > SLEC_SRR4435522_flt_fDsft_flb_macs.bed_treat_pileup_srt.txt
