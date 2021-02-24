#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Tue Jun  6 21:15:23 2017

@author: yolandatiao
"""

import csv
import glob
import os
from astropy.io import ascii # For using ascii table to open csv
from astropy.table import Table, Column    # For using astropy table functions


os.chdir("/Volumes/Huitian/GSE88987/codes")
import fc_basic_astropy_subprocess as fc

os.chdir("/Volumes/Huitian/Genombrower/codes/txt")

flist=[]
for fname in glob.glob("*.txt"):
    flist.append(fname)

nlist=[]
fnflist=[]
print len(flist)
for i in flist:
    fnflist.append(i[:-4])
    with open(i, "r") as fin:
        rfin=csv.reader(fin, delimiter=",")
        nlist.append(int(next(rfin)[0]))
#print nlist

outab=Table()
outab["filename_nf"]=fnflist
outab["bdgaccu"]=nlist
ascii.write(outab, "meta.csv", format="csv", overwrite=True)


metab=ascii.read("meta_write_bash.csv")
metab=fc.setcolnames(metab)

with open("bdgnorm.sh","r") as fin:
    rfin=csv.reader(fin, delimiter=",")
    inrow=next(rfin)[0]
    print inrow
    for x in xrange(0, len(metab)):
        xshname="%s.sh"%x
        with open(xshname, "w") as fout:
            wfout=csv.writer(fout, delimiter="\t")
            wfout.writerow(["cd /gpfs/home/hdiao/Geombrowser"])
            outrow=inrow
            osfactor=str(metab["1000000000_scalingfactor"][x])
            ofname=str(metab["filename_nf"][x])
            outrow=outrow.replace("sfactor", osfactor)
            outrow=outrow.replace("inputfile", ofname)
            fout.writelines(outrow)

with open("qsub.sh", "w") as fout:
    for x in xrange(0, 66):
        fout.writelines("qsub %s.sh"%x)
        fout.writelines("\n")
        
os.chdir("/Volumes/Huitian/Genombrower/codes/rename")
meta=ascii.read("rename_meta.csv")

with open("rename.sh", "w") as fout:
    for x in xrange(0, len(meta)):
        fout.writelines("mv ")
        fout.writelines(meta["oldname"][x])
        fout.writelines(" ")
        fout.writelines(meta["newnamenf"][x])
        fout.writelines(".bdg")
        fout.writelines("\n")





















