#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

snakemake -j 1 --cluster "sbatch -A $1 -p $2 -n 1  -t 00:01:00"
