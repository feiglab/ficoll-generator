#!/bin/bash

pdbfile=$1
patchfile=$2

patchlist=`cat $patchfile | xargs | tr ' ' '_'`

minCHARMM.pl -log min.log -par param=x,xtop=top_all36_carb.rtf:patches-linkers-all.rtf,xpar=par_all36_carb.prm:xtra.prm,patch=$patchlist,minsteps=100 $pdbfile > min.pdb
mdCHARMM.pl -log md.log -par param=x,xtop=top_all36_carb.rtf:patches-linkers-all.rtf,xpar=par_all36_carb.prm:xtra.prm,patch=$patchlist,dielec=rdie,epsilon=4,dyntemp=300,dynsteps=10000,dynoutfrq=500 -final md.pdb -trajout md.dcd min.pdb

