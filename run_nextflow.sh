#! /usr/bin/env bash
set -euo pipefail
#####################################################

##  any .e/.o to show up here
#SBATCH --error ./logs/nextflow."%j".err
#SBATCH --output ./logs/nextflow."%j".out

##  Name the job
#SBATCH --job-name Nextflow

##  Verbose
#SBATCH --export=ALL

## Memory and cpu slots
#SBATCH --partition cpu
#SBATCH --mem 32G
#SBATCH --cpus-per-task 8
#SBATCH --ntasks=1

#######################################################
module load singularity/4.0.1
module load java/17.0.2

# Select workflow (default: nf-core/rnaseq)
WORKFLOW="${WORKFLOW:-nf-core/rnaseq}"
# Select profile (default: singularity)
PROFILE="${PROFILE:-singularity}"

# Check for params file as arg
WF_PARAMS=""
if test -f "${1:-''}"; then
    WF_PARAMS="-params-file $1"
fi

# Run latest release
TAG=$( curl -s "https://api.github.com/repos/$WORKFLOW/releases/latest" | jq -r '.tag_name' )

# Workflow version or branch to use (default: latest tag)
BRANCH="${BRANCH:-$TAG}"

# Workflow hosted on remote server
nextflow run "$WORKFLOW" \
    -profile "$PROFILE" \
    -r "$BRANCH" \
    -resume \
    $WF_PARAMS

# Clean up Nextflow cache to remove unused files
nextflow clean -f -before "$( nextflow log -q | tail -n 1 )"
# Clean up empty work directories
find "$WORKDIR" -type d -empty -delete


#######################################################
# Example commmandline script usage:
# BRANCH=3.17 bash run_nextflow.sh params.yml

# EOF