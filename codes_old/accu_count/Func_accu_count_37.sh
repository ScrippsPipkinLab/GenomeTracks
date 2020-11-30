#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' Naive_SRR4435505_flt_fDsft_flb_macs.bed_treat_pileup_srt.bdg > Naive_SRR4435505_flt_fDsft_flb_macs.bed_treat_pileup_srt.txt
