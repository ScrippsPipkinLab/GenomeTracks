cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*1.449292586)}' Naive_SRR4435507_flt_fDsft_flb_macs.bed_treat_pileup_srt.bdg > Naive_SRR4435507_flt_fDsft_flb_macs.bed_treat_pileup_srt_bdgaccuNORM.bdg