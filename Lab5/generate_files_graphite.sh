#!/usr/bin/env bash

for A in 4.4 4.5 4.6 4.7 4.8 4.9 5.0 
do
    for CA in 2.50 2.55 2.60 2.65 2.70 2.75 2.80 2.85 2.90
    do
	sed "s/ALAT/${A}/g" graphite.in > tmp
        sed "s/RATIO/${CA}/g" tmp > graphite_${A}_${CA}.in
	echo "time -p ibrun pw.x -in graphite_${A}_${CA}.in > graphite_${A}_${CA}.out"
    done
done
