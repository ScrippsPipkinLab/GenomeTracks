awk '{if ($1 ~/chr/) {print $1 "\t" $2 "\t" $3 "\t" "*" "\t" $4}}' inputfile > outputfile1.bed
bedtools intersect -a outputfile1.bed -b mm10.blacklist.bed -v > outputfile1_flb.bed
awk '{print $1 "\t" $2 "\t" $3 "\t" $5}' outputfile1_flb.bed > outputfile1_flb.bdg
