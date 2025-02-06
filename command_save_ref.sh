#!/bin/bash
#####################################################
module load singularity/4.0.1
module load java/17.0.2

#######################################################
GTF_FILE=/lustre/home/mccbnfolab/ref_genomes/nextflow/mouse/GRCm39.vM36/GRCm39.primary_assembly.genome.filtered.gtf
GEN_FA=/lustre/home/mccbnfolab/ref_genomes/nextflow/mouse/GRCm39.vM36/rsem/GRCm39.primary_assembly.genome.fa

nextflow run nf-core/rnaseq -r 3.17.0 --input samplesheet.csv --outdir ./output --gtf $GTF_FILE --fasta $GEN_FA --save_reference -profile singularity

