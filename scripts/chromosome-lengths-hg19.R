## --------------------------------------------------------------------------------------------------------------------------------------------------
library(dplyr)
library(here)


## --------------------------------------------------------------------------------------------------------------------------------------------------
here::i_am("scripts/chromosome-lengths-hg19.R")


## --------------------------------------------------------------------------------------------------------------------------------------------------
cytobands <- read.table(here("datasets", "cytoBand.hg19.txt"), skip = 1, fill = T, col.names = c("chrom","chromStart","chromEnd","band","gStain"))

cytobands$chrom[which(cytobands$chrom == "chrX")] <- "chr23" 
cytobands$chrom[which(cytobands$chrom == "chrY")] <- "chr24" 

cytobands$arm <- substr(cytobands$band, 1, 1)


## --------------------------------------------------------------------------------------------------------------------------------------------------
chr.lengths <- cytobands %>% group_by(chrom) %>% summarize(length.bp = max(chromEnd), .groups = "keep")
chr.lengths <- chr.lengths[gtools::mixedorder(chr.lengths$chrom),]


## --------------------------------------------------------------------------------------------------------------------------------------------------
write.table(chr.lengths, quote = F, col.names = T, row.names = F, file = here("datasets", "hg19-chromosome-lengths.txt"), sep = '\t')


## --------------------------------------------------------------------------------------------------------------------------------------------------
arm.lengths <- cytobands %>% group_by(chrom, arm) %>% summarise(length.bp = max(chromEnd) - min(chromStart), .groups = "keep")
arm.lengths <- arm.lengths[gtools::mixedorder(arm.lengths$chrom),]  


## --------------------------------------------------------------------------------------------------------------------------------------------------
write.table(arm.lengths, quote = F, col.names = T, row.names = F, file = here("datasets", "hg19-chromosome-arm-lengths.txt"), sep = '\t')

