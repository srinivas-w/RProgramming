pollutantmean <- function(directory, pollutant, id = 1:332) {
id <- as.integer(id)
pollutant <- as.character(pollutant)
directory <- as.character(directory)
setwd(paste("C:\\Coursera\\R Programming\\Week2 assignment",directory, sep= "\\"))
x <-c()
for (i in id) {
if (i < 10){
p <-paste("00", i, sep="")
}else if (10 <= i && i < 100){
p <- paste(0, i, sep ="")
}else {
p <- as.character(i)
}
data <- read.csv(paste(p, ".csv", sep =""))
if (pollutant == "sulfate"){
y <- c(data[,2])
} else if (pollutant == "nitrate") {
y <- c(data[,3])
}
x <- c(x, y)
}
meandata <- mean (x, na.rm = TRUE)
round(meandata, 3)
}


