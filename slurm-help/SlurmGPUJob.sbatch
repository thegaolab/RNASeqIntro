#!/bin/bash -l
#SBATCH --job-name=GPUJob
#SBATCH --output=GPUJob_results.%j.%N.txt
#SBATCH --error=GPUJob_errors.%j.%N.err
#SBATCH -p gpu,dense
#SBATCH -A <myaccount>
#SBATCH --gres=gpu:1

srun nvidia-smi
