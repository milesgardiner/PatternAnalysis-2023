#!/bin/bash
#SBATCH --time=0-02:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task 4
#SBATCH --gres=gpu:1
#SBATCH --partition=vgpu
#SBATCH --job-name="s4589541-siamese-train"
#SBATCH --account=s4589541
#SBATCH --mail-user=m.gardiner@uq.net.au
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
conda activate /home/Student/s4589541/miniconda3/envs/venv
python /home/Student/s4589541/comp3710/report/PatternAnalysis-2023/recognition/Siamese\ Classifier\ for\ Alzheimer\'s\ disease\ \(s4589541\)/train.py --train-c checkpoints/cp_10-22_08-51-01