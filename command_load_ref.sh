#!/bin/bash
#######################################################
module load singularity/4.0.1
module load java/17.0.2

#######################################################
GTF_FILE=/lustre/home/mccbnfolab/ref_genomes/nextflow/mouse/GRCm39.vM36/GRCm39.primary_assembly.genome.filtered.gtf
STAR_IND=/lustre/home/mccbnfolab/ref_genomes/nextflow/mouse/GRCm39.vM36/GRCm39_index/star/
SALMON_IND=/lustre/home/mccbnfolab/ref_genomes/nextflow/mouse/GRCm39.vM36/GRCm39_index/salmon/
RSEM_IND=/lustre/home/mccbnfolab/ref_genomes/nextflow/mouse/GRCm39.vM36/GRCm39_index/rsem/genome

nextflow run nf-core/rnaseq -r 3.17.0 --input samplesheet.csv --outdir ./output --gtf $GTF_FILE --gencode --star_index $STAR_IND --salmon_index $SALMON_IND -profile singularity

