#!/usr/bin/env bash
#####################################################
##  execute script in current directory
##

##  any .e/.o to show up here
#SBATCH --error ./logs/nextflow."%j".err
#SBATCH --output ./logs/nextflow."%j".out

## Shell for qsub to use
#$ -S /bin/bash

##  Name the job
#SBATCH --job-name Nextflow

##  Verbose
#SBATCH --export=ALL

##  email
#SBATCH --mail-user morecockcm@vcu.edu
#SBATCH --mail-type=ALL

## Memory and cpu slots
#SBATCH --partition cpu
#SBATCH --mem 32G
#SBATCH --cpus-per-task 8 ## The number of threads the code will use

#######################################################
module load singularity/4.0.1
module load java/17.0.2

#######################################################
GTF_FILE=/lustre/home/mccbnfolab/Christiane/pipelines/genome_indexes/mouse/GRCm39_mm39/Mus_musculus.GRCm39.108.gtf
GEN_FA=/lustre/home/mccbnfolab/Christiane/pipelines/genome_indexes/mouse/GRCm39_mm39/Mus_musculus.GRCm39.dna.primary_assembly.fa

nextflow run nf-core/rnaseq -r 3.17.0 --input samplesheet.csv --outdir ./output --gtf $GTF_FILE --fasta $GEN_FA --save_reference -profile singularity

