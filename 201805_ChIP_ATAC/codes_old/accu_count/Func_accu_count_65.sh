#!/bin/bash

cd /gpfs/home/hdiao/Geombrowser

awk '{sum+=(($3-$2)*$4)} END {print sum}' tbet_flb.bdg > tbet_flb.txt
