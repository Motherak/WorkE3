# HF cache (groß, reproduzierbar) -> WORK
export HF_HOME="$WORK/.cache/huggingface"
export HUGGINGFACE_HUB_CACHE="$HF_HOME/hub"
export HF_DATASETS_CACHE="$HF_HOME/datasets"

# Projekt-Daten + Runs -> VAULT (wichtig)
export MODEL_COLLAPSE_DATA_DIR="$HPCVAULT/model_collapse/data"
export MODEL_COLLAPSE_RUNS_DIR="$HPCVAULT/model_collapse/runs"

# W&B offline (HPC freundlich)
export WANDB_MODE=offline
export WANDB_DIR="$MODEL_COLLAPSE_RUNS_DIR"
