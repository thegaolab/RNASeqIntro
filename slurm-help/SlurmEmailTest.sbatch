#!/bin/bash -l
#SBATCH --job-name=BasicEmailJob
#SBATCH --output=BasicEmailJob_results.%j.%N.txt
#SBATCH --error=BasicEmailJob_errors.%j.%N.err
#SBATCH -p compute
#SBATCH -A <myaccount>
#SBATCH --mail-user=<user1>@pennstatehealth.psu.edu,<user2>@pennstatehealth.psu.edu
#SBATCH --mail-type=ALL

srun hostname
