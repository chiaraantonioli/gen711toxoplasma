if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(c("Biostrings", "ggtree"))

install.packages("phytools")
install.packages("ape")
install.packages("treeio")
install.packages("ggtree")
install.packages("Biostrings")
install.packages("phangorn")
install.packages("geiger")
install.packages("ggrepel")
install.packages("ggtext")
install.packages("shiny")
##Packages to load:

library("maps")
library("phytools") #install
library("ape") #install
library("treeio") #no package called treeio
library("ggtree") #install
library("Biostrings") #install
library("ggplot2")
library("phangorn") #install
library("geiger") #install
library("RColorBrewer")
library("ggrepel") #install
library("ggtext") #install
library("shiny") #install

#read in tree
tree <- read.tree("RAxML_bestTree.new_tree.tre")
tree

#root tree
rooted_tree <- root(tree, outgroup = "PF3D7_0610400", node=NULL, resolve.root=TRUE, interactive=FALSE,edgelabels=FALSE)
rooted_tree

#visualizing tree
ggtree(rooted_tree, layout = "rectangular") +
  geom_tiplab()+
  expand_limits(x=5)
  #geom_treescale(width=1)
  #geom_text2(aes(label=label, subset = !is.na(as.numeric(label)) & as.numeric(label) > 70), nudge_x=-0.005, nudge_y=0.15)

