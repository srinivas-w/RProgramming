corr <- function(directory, threshold = 0) {
full.data <- complete(directory)
k <- subset(full.data, full.data$nobs > threshold)
obj.id <-c(k[,1])
j<- vector("numeric", length = 0)
for (i in obj.id) {
if (i < 10){
p <-paste("00", i, sep="")
}else if (10 <= i && i < 100){
p <- paste(0, i, sep ="")
}else {
p <- as.character(i)
}
raw.data <- read.csv(paste(p, ".csv", sep =""))
a <- na.omit(raw.data)
b <- cor(a$sulfate, a$nitrate)
j <- append(j, b, after= length(j))
}
c(j)
j
}