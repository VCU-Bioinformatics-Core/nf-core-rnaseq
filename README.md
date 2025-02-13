# nf-core-rnaseq

## Purpose
This is a template repository to be used to do quality control and alignment for all bulk RNASeq dataset coming into the BISR.  The output from the nf-core/rnaseq pipeline is a read count matrix that can be utilized in other downstream [BISR bulk RNASeq pipelines]().

## Quick Start

- Create a new Git repository under the BISR organization and check the "create from template" box, then select this repo from the drop down.

- Follow the instructions for using the bulk RNASeq nf-core pipeline on the BISR Wiki: [RNASeq Step by Step Guide](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/RNA-seq-Step-by-Step-Guide)

- Briefly:
  - Ensure you have the correct NextFlow version installed. [Prepare Your Environment](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/RNA-seq-Step-by-Step-Guide#preparing-your-environment)
  - Set up the project directory, [prepare raw data files](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/RNA-seq-Step-by-Step-Guide#step-1-make-raw-data-available-in-the-nextflow-project-directory) and edit required nextflow files like the [samplesheet](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/RNA-seq-Step-by-Step-Guide#step-3-create-and-edit-the-sample-sheet).
  - Run the pipeline using a [parameter file](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/RNA-seq-Step-by-Step-Guide#running-the-pipeline) or from the [command line](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/RNA-seq-Step-by-Step-Guide#method-2-including-parameters-on-the-command-line).

** *We highly recommend you [run NextFlow using a tmux session](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/RNA-seq-Step-by-Step-Guide#step-2-run-the-nextflow-command-in-tmux) on the cluster.* **

