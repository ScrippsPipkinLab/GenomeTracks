cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*3.180570541)}' Stat5A_flb.bdg > Stat5A_flb_bdgaccuNORM.bdg