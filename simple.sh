#!/bin/bash
#SBATCH --account=eleceng
#SBATCH --partition=ada
#SBATCH --nodes=1 --ntasks=1
#SBATCH --time=10:10:00
#SBATCH --mail-user=mrmnao001@myuct.ac.za
#SBATCH --mail-type=BEGIN,END,FAIL

# By default you start in the directory you submitted your job from.
pwd
date
hostname
sleep 10