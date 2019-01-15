#!/bin/bash
#SBATCH -N 1
#SBATCH -p GPU
#SBATCH --gres=gpu:p100:4
#SBATCH -t 2:00
#SBATCH --ntasks-per-node 28
module load singularity
singularity exec --nv ../i-my-tensorflow_gpu-py3.sif python MNIST_4GPU.py
