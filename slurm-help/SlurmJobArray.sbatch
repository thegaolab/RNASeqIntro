#!/bin/bash -l
#SBATCH --job-name=SlurmJobArray
#SBATCH --output=SlurmJobArray_results.%j.%N.txt
#SBATCH --error=SlurmJobArray_errors.%j.%N.err
#SBATCH -p compute
#SBATCH -A <myaccount>
#SBATCH --array=1-10

echo "This is Slurm array task #" $SLURM_ARRAY_TASK_ID
