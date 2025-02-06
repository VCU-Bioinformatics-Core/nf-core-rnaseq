#!/bin/bash
#######################################################
module load singularity/4.0.1
module load java/17.0.2

#######################################################
nextflow run nf-core/rnaseq -r 3.17.0 -profile singularity -resume -params-file nf-params.json
