#!/bin/bash
#SBATCH --account=eleceng
#SBATCH --partition=ada
#SBATCH --nodes=1 --ntasks=1
#SBATCH --time=10:10:00

# By default you start in the directory you submitted your job from.
singularity exec --bind /home/mrmnao001:/workdir python3.sif ls -l /workdir