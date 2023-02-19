csna_dep_packages = c("RSQLite", "RcppEigen", "data.table", "foreach", "doParallel", "parallel", "abind", "gap", "lme4", "gridExtra", "xlsx", "devtools", "tidyverse", "git2r", "qtl2", "regress", "rJava", "Rcpp", "ggpubr", "rlang", "furrr", "future", "ellipsis")

proj_packages = c("GGally", "tidymodels", "broom", "corrplot", "qtl2ggplot", "ggbeeswarm", "gplots", "RColorBrewer", "statmod", "MASS", "tibble", "ggplot2", "optparse", "qtl", "qtlbook", "plyr", "EnvStats", "knitr", "corrgram", "kableExtra", "tidyr", "mclust", "dplyr", "cluster", "readxl", "psych", "reshape2", "workflowr")

miniconda_packages = c("reticulate","synapser")

minicran_packages = c("qtl2","qtl2convert")

bioconductor_packages = c("BiocManager","rhdf5","Biobase","DESeq2","edgeR","clusterProfiler","pathview","enrichplot","karyoploteR","diffloop","regioneR","TxDb.Hsapiens.UCSC.hg19.knownGene","ComplexHeatmap","esATAC","phyloseq","tximport","biomaRt","WGCNA","limma","AnnotationHub","RDAVIDWebService","org.Hs.eg.db","TxDb.Hsapiens.UCSC.hg19.knownGene",)

chk_pkgs <- c(csna_dep_packages,proj_packages, miniconda_packages, minicran_packages, bioconductor_packages)

suppressPackageStartupMessages(
  sapply(chk_pkgs, require, character.only=TRUE, quietly=FALSE, warn.conflicts=FALSE)
) -> ret

missing_pkgs <- sort(names(which(ret == FALSE)))

if (length(missing_pkgs) > 0) {
  warning("The following packages are not installed: %s", 
          paste0(sprintf("  - %s", missing_pkgs), collapse="\n"))
}

quit(save="no", status=length(names) == 0, runLast = FALSE)
