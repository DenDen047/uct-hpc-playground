#!/bin/bash
#SBATCH --account=eleceng
#SBATCH --partition=ada
#SBATCH --nodes=1 --ntasks=1
#SBATCH --time=10:10:00
#SBATCH --mail-user=mrmnao001@myuct.ac.za
#SBATCH --mail-type=BEGIN,END,FAIL

# By default you start in the directory you submitted your job from.
singularity build --fakeroot python3.sif python3.def
singularity run python3.sif
