# gen711toxoplasma
This goal of this project is to a phylogenetic tree based on sequencing data of 3 variants of Toxoplasma gondii histone 2A (1, X, and Z), histone 2B, and histone 4.
## Background
Toxoplasma gondii (Toxoplasma) is an extremely successful parasite that infects almost every species of mammal and bird. It is closely related to other species of apicomplexan parasites, such as Plasmodium and Cryptosporidium species, which also cause serious disease in humans. Toxoplasma has the ability to clonally reproduce in intermediate hosts and causes an opportunistic infection in immunocompromised patients, pregnant people, fetuses, and infants (Chen, 2021). The initial symptoms of Toxoplasma infection are similar to the flu, but the disease can progress in at-risk patients. In pregnant people, infection can result in miscarraige, birth defects, or stillbirth. In immunocompromised patients, infection can result in fever, headache, nausea, and confusion that persists after the initial infection period. Because Toxoplasma can infect any tissue in the body, it can also cause a serious ocular infection. Symptoms of an ocular Toxoplasma infection include blurry vision, eye pain, tears, and sensitivity to light (Centers For Disease Control and Prevention, 2018). 

The transition between the life cycle stages of Toxoplasma is mediated by epigenetic regulation (Nardelli et. al, 2013). Several types of proteins are involved in epigenetic regulation, including histones and bromodomain proteins. Histones exist as octamers composed of H2A, H2B, H3, and/or H4. They help to package the genome. Histone variants and modifications can be associated with either activation or repression of transcription. Within the types of histones, there are variants. The H2A histone has three variants: H2A.Z, H2A.X, and H2A.1. The variant H2A.Z has been associated with gene regulation, particularly the activation of genes (Giamo et. al, 2019). The variant H2A.1 interacts with H2Bv during gene activation, and it is the most conserved variant of H2A (Dalmasso et. al, 2009). H2A.X, unlike the other two variants, is associated with gene silencing and gene repair. The H2B variant H2Bv interacts with both H2A.Z and H2A.1 during gene activation. Lastly, H4 is the most conserved across species of any of these histones, only differing from human H4 by 6 amino acids (Nardelli et. al, 2013).

This investigation analyzes the gene sequences of H2A.Z, H2A.X, H2A.1, H2Bv, and H4 to build a phylogenetic tree showing the relationships between the genes. It was hypothesized that H2A.Z and H2A.1 will be the most genetically similar because they both interact with H2Bv during gene activation.
## Methods
The sequences for the 5 histone genes were downloaded from ToxoDB, an online database for Toxoplasma research funded by the US National Institute of Allergy and Infectious Diseases. All of the sequences are FASTA files from the Toxoplasma gondii ME49 strain. An additional sequence, of Plasmodium falciparum Histone 4, was downloaded from PlasmoDB, which is a similar site to ToxoDB funded by the same institute but for Plasmodium species. This sequence was used as the outgroup for the phylogenetic tree. 

The bioconda package was installed onto VScode into the conda environment. All of the FASTA files were combined into one FASTA file, and converted to an alignment file using the mafft program. The alignment file was visualized using Aliview. The alignments were compared to eachother and a plasmid which contains the H2A.Z gene from a previous study. The RAxML program was used to make a tree of the five T. gondii genes as well as the P. falciparum histone with 10 bootstraps. The GTRGAMMA option was used, which is a specific algorithm model of nucleotide substitution rates. The resulting tree was visualized using RStudio ggtree. 

The first challenge for this investigation was that T. gondii Histone 4 was originally used as the outgroup for the phylogenetic tree. Histone 4 was too similar to the other proteins, so the tree was missing nodes. This problem was fixed by adding the P. falciparum gene. The second challenge of this investigation was that the computer used has limited processing power, so the original tree was only created with 5 bootstraps. Bootsraps are a measure of how likely the tree is to be accurate. The second tree was created with 10 boostraps, but this still may not be enough to ensure accuracy. 
## Findings
![alt text](https://github.com/chiaraantonioli/gen711toxoplasma/blob/main/figs/alignmentwplasmid.png "Alignment")

Figure 1: The alignment of T. gondii Histones 2A.Z, 2A.X, 2A.1, 2Bv, and 4 compared to a plasmid with the H2A.Z gene inserted. The plasmid and Histone 2A.Z align almost perfectly. Histones 2A.X and 2A.1 appear to be more similar to H2A.Z than H2Bv and H4.

![alt text](https://github.com/chiaraantonioli/gen711toxoplasma/blob/main/figs/HistoneTreeWithPlasmo.png "Tree2")

Figure 2: The phylogenetic tree of T. gondii H2A.Z, H2A.X, H2Bv, and H4 with P. falciparum H4 added as an outgroup (PL H4). H2A.X and H2A.1 are most similar to eachother, and the H4 proteins of different species are also very similar to eachother. H2A.z is more similar to the other H2 proetins than the H4 proteins.

## Poster
![alt text](https://github.com/chiaraantonioli/gen711toxoplasma/blob/main/figs/Antonioli_GEN711_Project.png "Poster")

Figure 3: The poster from the in-class presentation of this project.
## Citations
