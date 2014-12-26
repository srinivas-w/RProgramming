complete <- function(directory, id = 1:332) {
id <- as.integer(id)
directory <- as.character(directory)
setwd(paste("C:\\Coursera\\R Programming\\Week2 assignment",directory, sep= "\\"))
j <- 0
full.data <- data.frame(id= rep(NA,length(id)) ,nobs = rep(NA,length(id)))
for (i in id) {
if (i < 10){
p <-paste("00", i, sep="")
}else if (10 <= i && i < 100){
p <- paste(0, i, sep ="")
}else {
p <- as.character(i)
}
j <- j+1
data <- read.csv(paste(p, ".csv", sep =""))
good <- complete.cases(data)
nobs <- nrow(data[good,])
full.data[j, ] <- c(i, nobs)
}
full.data
}