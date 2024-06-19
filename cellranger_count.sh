#!/bin/bash
#SBATCH --account=def-ioannisr
#SBATCH --cpus-per-task=31      # number of MPI processes
#SBATCH --time=0-07:00          # time (DD-HH:MM)
#SBATCH --mem=123G
#SBATCH --job-name=S7D1A3_CR7

cd /home/ngc1320/scratch/scripts

module load mugqic/cellranger/7.0.1

cellranger count \
--localcores=31 --localmem=123 \
--id=S7D1A3 \
--transcriptome=/home/ngc1320/scratch/references/refdata-gex-GRCh38-2020-A \
--fastqs=/home/ngc1320/scratch/fastq_files/S7D1A3-FASTQs/
