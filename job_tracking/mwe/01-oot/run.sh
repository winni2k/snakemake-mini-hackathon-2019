#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

rm -f success
rm -rf .snakemake
# snakemake -j 1 --verbose
#snakemake -j 1 --cluster "sbatch -A $1 -p $2 -n 1  -t 00:01:00"
snakemake -j 1 --verbose --profile profile/slurm
