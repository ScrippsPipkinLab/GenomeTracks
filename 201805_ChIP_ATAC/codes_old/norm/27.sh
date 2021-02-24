cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*0.281079975)}' IRF4_flb.bdg > IRF4_flb_bdgaccuNORM.bdg