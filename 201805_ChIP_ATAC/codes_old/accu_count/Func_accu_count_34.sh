#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' MPEC_SRR4435523_flt_fDsft_flb_macs.bed_treat_pileup_srt.bdg > MPEC_SRR4435523_flt_fDsft_flb_macs.bed_treat_pileup_srt.txt
