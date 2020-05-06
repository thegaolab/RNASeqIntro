#!/bin/bash -l
#SBATCH --job-name=BasicJob
#SBATCH --output=BasicJob_results.%j.%N.txt
#SBATCH --error=BasicJob_errors.%j.%N.err
#SBATCH -p compute
#SBATCH -A <myaccount>

srun hostname

