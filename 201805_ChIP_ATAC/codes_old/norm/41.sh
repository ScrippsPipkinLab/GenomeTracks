cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*0.753440142)}' Runx3_ex_vivo_flb.bdg > Runx3_ex_vivo_flb_bdgaccuNORM.bdg