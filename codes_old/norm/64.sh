cd /gpfs/home/hdiao/Geombrowser
awk '{print $1 "\t" $2 "\t" $3 "\t" int($4*0.559050022)}' cJun_flb.bdg > cJun_flb_bdgaccuNORM.bdg