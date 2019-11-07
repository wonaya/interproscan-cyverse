#!/bin/bash 

ml tacc-singularity
singularity run -B /scratch/projects/tacc/bio/interproscan:/data -B /scratch/projects/tacc/bio/interproscan/interproscan-5.36-75.0/data:/opt/interproscan/data docker://agbase/interproscan:5.36-75.0_0 -i pnnl_10000.fasta -d outdir_10000 -f tsv,json,xml,html,gff3,svg -g -D AgBase
