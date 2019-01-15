#!/bin/bash
#SBATCH -N 1
#SBATCH -p GPU
#SBATCH --gres=gpu:volta32:8
#SBATCH -t 10:00:00
#SBATCH --ntasks-per-node 28
module load singularity
singularity exec --nv /pylon5/ir5fq9p/grasool/FAA/i-my-tensorflow_gpu-py3.sif python FAA_Train_GR_ResNet50_MGPUs.py
