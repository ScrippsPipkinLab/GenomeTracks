cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*0.832225766)}' JunD_flb.bdg > JunD_flb_bdgaccuNORM.bdg