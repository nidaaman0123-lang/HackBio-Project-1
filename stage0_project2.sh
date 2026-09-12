#!/bin/bash

# HackBio Stage 0 - Project 2
# Installing Bioinformatics Software on the Terminal

# 1. Activate base conda environment
conda activate base

# 2. Create conda environment named funtools
conda create -n funtools

# 3. Activate funtools environment
conda activate funtools

# 4. Install Figlet
sudo apt-get install figlet

# 5. Run Figlet with your name
figlet "Nida Aman"

# 6. Install BWA through Bioconda
conda install -c bioconda bwa

# 7. Install BLAST through Bioconda
conda install -c bioconda blast

# 8. Install SAMtools through Bioconda
conda install -c bioconda samtools

# 9. Install BEDtools through Bioconda
conda install -c bioconda bedtools

# 10. Install SPAdes through Bioconda
conda install -c bioconda spades

# 11. Install BCFtools through Bioconda
conda install -c bioconda bcftools

# 12. Install fastp through Bioconda
conda install -c bioconda fastp

# 13. Install MultiQC through Bioconda
conda install -c bioconda multiqc
