
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