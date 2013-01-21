#!/bin/sh

qcdir=~/research/data/qc/systems/

for dir in `ls $qcdir` 
do
	echo $qcdir$dir
	./mjava2mse.sh $qcdir$dir famix21
done

