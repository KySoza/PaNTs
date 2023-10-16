# package management
install.packages("phytools")
library(phylotools)

# Read in trees + check
setwd("$YOUR_DIRECTORY")
tree <- read.tree("$YOUR_TREE")
plot(tree)

# Read in taxon rename file
# File should be two columns with headers where first column are old labels
# and second column are new labels
names <- read.csv("$YOUR_NAMES.csv", h = T)

# Change taxon labels + check
newtree <- sub.taxa.label(tree, names)
plot(newtree)

# Export tree
write.tree(newtree, file = "$YOUR_NEW_TREE.newick")
