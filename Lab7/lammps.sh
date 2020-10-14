#!/usr/bin/env bash

#SBATCH --job-name=lammps
#SBATCH --partition=compute
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --time 00:30:00
#SBATCH --output=lammps

module purge
module load lammps/20180822
module list
printenv

time -p mpirun lammps -in Al_fcc.in
