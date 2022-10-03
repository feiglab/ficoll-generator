#!/bin/bash

pdbfile=$1
patchfile=$2

patchlist=`cat $patchfile | xargs | tr ' ' '_'`

enerCHARMM.pl -log ener.log -par param=x,xtop=top_all36_carb.rtf:poly-glycerol.rtf:patches-linkers-all.rtf,xpar=par_all36_carb.prm:patches-linkers-xtra.prm,patch=$patchlist,nobuildall $pdbfile
