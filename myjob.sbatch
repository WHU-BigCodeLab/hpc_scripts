#!/bin/bash
#SBATCH --account=caibo
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --gres=gpu:4
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --time=360:00:00

module load scl/gcc6.3
module load nvidia/cuda/10.0

nvidia-smi
python train.py
