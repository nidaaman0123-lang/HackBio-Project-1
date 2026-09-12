#!/bin/bash

# ==========================================
# HackBio Stage 0 - Project 1
# Name: Nida Aman
# ==========================================

echo "=== HackBio Project 1 ==="
echo "Name: Nida Aman"

# 1. Create project folders
mkdir -p "Nida Aman"
mkdir -p biocomputing

# 2. Enter biocomputing directory
cd biocomputing || exit 1

# 3. Download required files
wget -q https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.fna
wget -q https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk -O wildtype1.gbk

# 4. Move FASTA file to Nida Aman folder
mv -f wildtype.fna "../Nida Aman/"

# 5. Search for the mutation pattern
echo "=== Pattern: tatatata ==="
grep -i -n "tatatata" "../Nida Aman/wildtype.fna" > mutant_matches.txt
cat mutant_matches.txt

# 6. Count GBK lines excluding the first line
echo "=== GBK lines excluding header ==="
tail -n +2 wildtype1.gbk | wc -l

# 7. Get sequence length
echo "=== Sequence length ==="
awk 'NR==1 {print $3}' wildtype1.gbk

# 8. Get source organism
echo "=== Source ==="
grep "^SOURCE" wildtype1.gbk

# 9. Get gene
echo "=== Gene ==="
grep '/gene=' wildtype1.gbk

# 10. Show final files
echo "=== biocomputing folder ==="
ls -lh

echo "=== Nida Aman folder ==="
ls -lh "../Nida Aman/"
