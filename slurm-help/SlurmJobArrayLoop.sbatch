#!/bin/bash -l
#SBATCH --job-name=JobArrayLoop
#SBATCH --output=JobArrayLoop_results.%j.%N.txt
#SBATCH --error=JobArrayLoop_errors.%j.%N.err
#SBATCH --time=480:00
#SBATCH -p compute,gpu
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c86
#SBATCH --mem-per-cpu=4000
#SBATCH --array=1-38
 
# This is an example script that combines array tasks with
# bash loops to process many short runs. Array jobs are convenient
# for running lots of tasks, but if each task is short, they
# quickly become inefficient, taking more time to schedule than
# they spend doing any work and bogging down the scheduler for
# all users.
 
pwd; hostname; date
 
 
#Set the number of runs that each SLURM task should do
PER_TASK=1
 
# Calculate the starting and ending values for this task based
# on the SLURM task and the number of runs per task.
START_NUM=$(( ($SLURM_ARRAY_TASK_ID - 1) * $PER_TASK + 1 ))
END_NUM=$(( $SLURM_ARRAY_TASK_ID * $PER_TASK ))
 
# Print the task and run range
echo This is task $SLURM_ARRAY_TASK_ID, which will do runs $START_NUM to $END_NUM
 
# Run the loop of runs for this task.
for (( run=$START_NUM; run<=END_NUM; run++ )); do
  echo This is SLURM task $SLURM_ARRAY_TASK_ID, run number $run
  echo "srun stress -c 86 -m 60 --vm-bytes 7G"
  srun stress -c 86 -m 60 --vm-bytes 7G
done

