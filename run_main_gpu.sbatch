#!/bin/bash
#SBATCH --job-name=mc_main
#SBATCH --partition=a100
#SBATCH --gres=gpu:a100:1
#SBATCH --cpus-per-task=8
#SBATCH --time=12:00:00
#SBATCH --output=%x-%j.out

module purge
module load python/3.12-conda
source $WORK/venvs/model_collapse/bin/activate
cd $WORK/projects/model_collapse
source env.sh

export HF_HUB_OFFLINE=1
export HF_DATASETS_OFFLINE=1
export TRANSFORMERS_OFFLINE=1
export WANDB_MODE=offline

python main.py hydra.job.chdir=false

