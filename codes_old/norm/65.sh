cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*0.178597542)}' tbet_flb.bdg > tbet_flb_bdgaccuNORM.bdg