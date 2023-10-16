# Soure function or load libraray
source("../Mergeomics_Version_1.99.Oct23.R")

job.ssea <- list()
job.ssea$label <- ""
job.ssea$folder <- ""
job.ssea$genfile <- "" # marker to gene file
job.ssea$locfile <- "" # marker association file		
job.ssea$modfile <- ""
job.ssea$inffile <- ""
job.ssea$permtype <- "gene" # for non-GWAS, set this to "marker"
job.ssea$nperm <- 10000
job.ssea$maxoverlap <- 0.33 # for non-GWAS, set this to 1
job.ssea$trim <- 0.002 # default is 0.002, set to 0 for no trimming, users can try increasing to 0.005 to dampen inflation further
job.ssea <- ssea.start(job.ssea)
job.ssea <- ssea.prepare(job.ssea)
job.ssea <- ssea.control(job.ssea)
job.ssea <- ssea.analyze(job.ssea)
job.ssea <- ssea.finish(job.ssea)

