cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*3.760135992)}' Stat5B_flb.bdg > Stat5B_flb_bdgaccuNORM.bdg