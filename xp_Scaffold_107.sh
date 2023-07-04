#!/bin/bash
#SBATCH --time=23:59:00
#SBATCH --account=def-ymiar
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=1024M
#SBATCH --job-name=Scaffold_107

./selscan --xpehh --threads 32 --pmap \
--vcf /scratch/milad/xpehh/vp2/Scaffold_107/ciep_pos_Scaffold_107.recode.vcf \
--vcf-ref /scratch/milad/xpehh/vp2/Scaffold_107/ciep_neg_Scaffold_107.recode.vcf \
--map /scratch/milad/xpehh/vp2/Scaffold_107/Scaffold_107.map \
--out /scratch/milad/xpehh/vp2/Scaffold_107/Scaffold_107

./norm --xpehh --files /scratch/milad/xpehh/vp2/Scaffold_107/*.xpehh.out