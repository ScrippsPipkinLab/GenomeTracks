cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*0.875072337)}' JunB_flb.bdg > JunB_flb_bdgaccuNORM.bdg