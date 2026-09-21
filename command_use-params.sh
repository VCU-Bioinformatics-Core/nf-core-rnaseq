#!/bin/bash
#######################################################
module load singularity/4.0.1
module load java/17.0.2

### On Cardinal use the following: 
### Loads java 17:
# spack load /ku6obio 
# spack load nextflow@25.04.0

#######################################################
nextflow run nf-core/rnaseq -r 3.17.0 -profile singularity -resume -params-file nf-params.json
