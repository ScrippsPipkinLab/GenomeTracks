#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' Bach2_mm10_flb.bdg > Bach2_mm10_flb.txt
