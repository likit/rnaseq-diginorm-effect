#!/bin/sh -login
#PBS -l nodes=1:ppn=1,mem=20gb,walltime=24:00:00
#PBS -m abe
#PBS -N RSEM_prepare_reference

module load RSEM/1.2.11
module load bowtie/1.0.0

cd ${PBS_O_WORKDIR}
rsem-prepare-reference --transcript-to-gene-map ${knownisoform} --gtf ${gtf} ${fasta} ${name}
