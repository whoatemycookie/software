###################### Official cran packages ######################

## HH original script
csna_dep_packages = c("RSQLite", "RcppEigen", "data.table", "foreach", "doParallel", "parallel", "abind", "gap", "lme4", "gridExtra", "xlsx", "devtools", "tidyverse", "git2r", "qtl2", "regress", "rJava", "Rcpp", "ggpubr", "rlang", "furrr", "future", "ellipsis")

install.packages(csna_dep_packages, repos="http://cran.us.r-project.org", dependencies = TRUE)

## Additonal pacakges required by projects
proj_packages = c("GGally", "tidymodels", "broom", "corrplot", "qtl2ggplot", "ggbeeswarm", "gplots", "RColorBrewer", "statmod", "MASS", "tibble", "ggplot2", "optparse", "qtl", "qtlbook", "plyr", "EnvStats", "knitr", "corrgram", "kableExtra", "tidyr", "mclust", "rhdf5", "dplyr", "cluster", "readxl", "psych", "reshape2", "workflowr")

install.packages(proj_packages, repos="http://cran.us.r-project.org", dependencies = TRUE)

###################### miniconda packages ######################

install.packages("reticulate")
reticulate::install_miniconda()
install.packages("synapser", repos = c("http://ran.synapse.org", "http://cran.fhcrc.org"), dependencies = TRUE)


###################### github packages ######################

#install.packages("remotes")
remotes::install_github("jtlovell/qtlTools")
remotes::install_github("msaul/msaul")
remotes::install_github("jtliso/cliqueR")


###################### Minicran packages ######################

install.packages(c("qtl2","qtl2convert"), repos="https://rqtl.org/qtl2cran", dependencies = TRUE)


###################### Bioconductor Packages ######################


if (!requireNamespace("BiocManager", quietly=TRUE))
  install.packages("BiocManager", repos = "http://cran.us.r-project.org", dependencies = TRUE)


BiocManager::install()
BiocManager::install("Biobase")
BiocManager::install("DESeq2")
BiocManager::install("edgeR")
BiocManager::install("clusterProfiler")
BiocManager::install("pathview")
BiocManager::install("enrichplot")
BiocManager::install("Rhtslib")
BiocManager::install("karyoploteR")
BiocManager::install("diffloop")
BiocManager::install("regioneR")
BiocManager::install("TxDb.Hsapiens.UCSC.hg19.knownGene")
BiocManager::install("ComplexHeatmap")
BiocManager::install("esATAC")
BiocManager::install("parallel")
BiocManager::install("phyloseq")
BiocManager::install("doParallel")
BiocManager::install("tximport")
BiocManager::install("biomaRt")
BiocManager::install("WGCNA")
BiocManager::install("limma")
BiocManager::install("AnnotationHub")
BiocManager::install("RDAVIDWebService")
BiocManager::install("org.Hs.eg.db")


###################### From source Packages ######################

source("https://horvath.genetics.ucla.edu/html/CoexpressionNetwork/GeneAnnotation/installAnRichment.R")
installAnRichment()


###################### Updating Packages ######################

update.packages(ask = FALSE)