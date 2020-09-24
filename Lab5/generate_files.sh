#!/usr/bin/env bash

sed "s/10.28/NEW/g" si.in > tmp
for ALAT in 10.0 10.1 10.2 10.3 10.4 10.5 10.6 
do
sed "s/NEW/${ALAT}/g" tmp > si_${ALAT}.in
echo "time -p ibrun pw.x -in si_${ALAT}.in > si_${ALAT}.out"
done
