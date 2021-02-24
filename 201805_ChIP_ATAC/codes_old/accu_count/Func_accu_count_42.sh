#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' Runx3_d6_flb.bdg > Runx3_d6_flb.txt
