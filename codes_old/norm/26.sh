cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*0.898789474)}' Exhausted_SRR4435498_flt_fDsft_flb_macs.bed_treat_pileup_srt.bdg > Exhausted_SRR4435498_flt_fDsft_flb_macs.bed_treat_pileup_srt_bdgaccuNORM.bdg