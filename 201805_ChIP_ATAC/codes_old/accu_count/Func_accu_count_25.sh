#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' Exhausted_SRR4435496_flt_fDsft_flb_macs.bed_treat_pileup_srt.bdg > Exhausted_SRR4435496_flt_fDsft_flb_macs.bed_treat_pileup_srt.txt
