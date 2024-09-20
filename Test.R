library(bio3d)
f1 <- read.fasta("/home/elmer/Elmer/Guada/QKI_NTRK2_F1.fa")
f2 <- read.fasta("/home/elmer/Elmer/Guada/QKI_NTRK2_F2.fa")
aln <- read.fasta( system.file("examples/hivp_xray.fa",
                               package = "bio3d") )
library(msa)
library(Biostrings)
x <- AAStringSet(c(pdbseq(f1),pdbseq(f2)))
mm <-msa(inputSeqs = c("/home/elmer/Elmer/Guada/QKI_NTRK2_F1.fa","/home/elmer/Elmer/Guada/QKI_NTRK2_F2.fa"),
    type="protein")
class(mm)
