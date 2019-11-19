#!/bin/bash
#SBATCH -J RAxML
#SBATCH -n 1
#SBATCH -t 30:00
#SBATCH --mem=20g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=chris@pentasons.com

#SBATCH --ntasks-per-node=8
#SBATCH --account=inbre-train
#SBATCH partition=inv-inbre

#each echo commans is just to make sure that all of yoour code is running properly
echo "Starting ramxlmHPC run at $(date)"

module load swset gcc raxml

#This next bit of code is all on one line
raxmlHPC-PTHREADS-AVX -T 8 -f a -m GTRGAMMA -p 618 -N 2 -x 309 -s AllBears.aln -n AllBearTrees -w /project/inbre-train/inbre002/molb4485/Henry_Phylo/AllBearTrees -o GiantPanda

echo "RAxML has finished at $(date)"

