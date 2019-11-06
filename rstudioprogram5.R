ptm <- proc.time()
library("data.table")
header <- read.table("LNU04027662.csv", header = TRUE, sep=",", nrow = 1)
DF <- fread("LNU04027662.csv", skip=1, sep=",", header = FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
DF
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME

