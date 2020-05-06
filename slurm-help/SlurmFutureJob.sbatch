```bash
#!/bin/bash -l
#SBATCH --job-name=FutureJob
#SBATCH --output=FutureJob_results.%j.%N.txt
#SBATCH --error=FutureJob_errors.%j.%N.err
#SBATCH --begin=now+1hour
#SBATCH -p compute
#SBATCH -A <myaccount>

srun hostname
```
