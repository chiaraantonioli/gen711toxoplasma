
### conda
added channels defaults, bioconda, and conda-forge
    conda config --add channels conda-forge 
created a group called CHIARAA
    conda create -n CHIARAA python bwa fastqc
downloaded python bwa and fastqc
activated group:
    conda activate CHIARAA

### project description:
make github account
5 fasta files of Toxoplasma gondii genes: histone 2A.Z, histone 2A.X, histone 2A1, histone 2B, and histone 4
make a phylogenetic tree of these three genes
the 2A variants should be the most similar, with 2B and 4 being more different.

### 4/22/22
dowloaded MAFFT and tried to make an alignment but cannot find a tutorial that explains how to use it
https://github.com/chiaraantonioli/gen711toxoplasma
aliview 
### 4/29/22
downloaded aliview
conda install -c bioconda
(base) chiaraantonioli@Chiaras-MacBook-Air-2 project % cat tgme* > all_seq.fasta
(base) chiaraantonioli@Chiaras-MacBook-Air-2 project % mafft --auto all_seq.fasta > aligned_no_plasmid.ali
GTRGAMMA is a specifc model of nucleotide substitution rates
interatictive tree of life to visualize it
make tree: raxmlHPC-PTHREADS -T 8 -N 100 -s aligned_no_plasmid.ali -m GTRGAMMA -p 12345 -n histone_tree.tre 