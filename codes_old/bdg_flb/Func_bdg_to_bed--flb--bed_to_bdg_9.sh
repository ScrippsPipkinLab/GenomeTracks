#!/bin/bash

module load bedtools

cd /gpfs/home/hdiao/Geombrowser/Exp169

awk '{if ($1 ~/chr/) {print $1 "\t" $2 "\t" $3 "\t" "*" "\t" $4}}' B2_169_19_flt_sft_macs.bed_treat_pileup_sorted.bdg > B2_169_19_flt_sft_macs.bed_treat_pileup_sorted.bed
bedtools intersect -a B2_169_19_flt_sft_macs.bed_treat_pileup_sorted.bed -b mm10.blacklist.bed -v > B2_169_19_flt_sft_macs.bed_treat_pileup_sorted_flb.bed
awk '{print $1 "\t" $2 "\t" $3 "\t" $5}' B2_169_19_flt_sft_macs.bed_treat_pileup_sorted_flb.bed > B2_169_19_flt_sft_macs.bed_treat_pileup_sorted_flb.bdg
