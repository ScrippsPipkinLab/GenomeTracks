cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*0.299003079)}' BATF_flb.bdg > BATF_flb_bdgaccuNORM.bdg