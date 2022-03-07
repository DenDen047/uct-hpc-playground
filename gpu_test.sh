#!/bin/bash
#SBATCH --account=aru
#SBATCH --partition=a100
#SBATCH --gres=gpu:a100-2g-10gb:1
#SBATCH --ntasks=2
#SBATCH --nodes=1
#SBATCH --time=10:10:00
#SBATCH --mail-user=mrmnao001@myuct.ac.za
#SBATCH --mail-type=BEGIN,END,FAIL

# By default you start in the directory you submitted your job from.
export CUDA_VISIBLE_DEVICES=$(ncvd)
singularity exec --nv docker://nvidia/cuda:11.0-base nvidia-smi