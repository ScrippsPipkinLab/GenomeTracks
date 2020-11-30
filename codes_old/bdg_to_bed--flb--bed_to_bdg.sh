awk '{if ($1 ~/chr/) {print $1 "\t" $2 "\t" $3 "\t" "*" "\t" $4}}' inputfile > outputfile.bed
bedtools intersect -a outputfile.bed -b mm10.blacklist.bed -v > outputfile_flb.bed
awk '{print $1 "\t" $2 "\t" $3 "\t" $5}' outputfile_flb.bed > outputfile_flb.bdg
