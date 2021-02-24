#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' JunD_flb.bdg > JunD_flb.txt
