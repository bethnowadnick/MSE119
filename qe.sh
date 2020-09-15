#!/usr/bin/env bash

#SBATCH --job-name=qe
#SBATCH --partition=compute
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=24
#SBATCH --time 00:30:00
#SBATCH --output=qe.out

module purge
module load qe/6.4.1
module list
export ESPRESSO_TMPDIR="/scratch/${USER}/${SLURM_JOB_ID}"

time -p ibrun pw.x -in silicon-1.in > silicon-1.out
