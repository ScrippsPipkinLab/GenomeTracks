#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' mm10.blacklist.bed > mm10.blacklist.txt
