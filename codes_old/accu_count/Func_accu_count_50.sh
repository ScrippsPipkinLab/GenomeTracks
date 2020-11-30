#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' SRR4435502.sorted.bam_5flt_sft_flb.bed_macs.bed_treat_pileup.bdg_srt.bdg > SRR4435502.sorted.bam_5flt_sft_flb.bed_macs.bed_treat_pileup.bdg_srt.txt
