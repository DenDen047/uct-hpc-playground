#!/bin/bash
#SBATCH --account=eleceng
#SBATCH --partition=ada
#SBATCH --nodes=1 --ntasks=1
#SBATCH --time=10:10:00

# By default you start in the directory you submitted your job from.
singularity exec lolcow_latest.sif cowsay "ARU HPC"
