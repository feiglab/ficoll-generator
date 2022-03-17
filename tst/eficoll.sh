#!/bin/bash

pdbfile=$1
patchfile=$2

patchlist=`cat $patchfile | xargs | tr ' ' '_'`

enerCHARMM.pl -log ficoll.log -par param=x,xtop=top_all36_carb.rtf:patches-linkers-all.rtf,xpar=par_all36_carb.prm:xtra.prm,patch=$patchlist $pdbfile
