library(readxl)
spambase<-read_xlsx("spambase.xlsx")
n = dim(spambase)[1]
id=sample(1:n,floor(0.5*n))
data <- spambase[id,]
newdata <- spambase[-id,]
Knearest <- function(data,k,newdata){
  
  n1 <- dim(data)[1]
  n2 <- dim(newdata)[1]
  p <- dim(data)[2]
  Prob <- numeric(n2)
  test=as.matrix(data[,-p])
  train=as.matrix(newdata[-p])
  
  X <- train/matrix(sqrt(rowSums(train^2)),nrow=n1,ncol=p-1)
  Y <- test/matrix(sqrt(rowSums(test^2)),nrow = n2,ncol = p-1)
  C <- X %*% t(Y)
  d <- 1- C
  
  Sorted <- matrix(0,nrow=dim(d)[1],ncol = dim(d)[2])
  indexes <- matrix(0,nrow=dim(d)[1],ncol = dim(d)[2])
  for (i in 1:n2){
    Sorted <- sort(d[,i])
    indexes <- sort(d[,i],index.return=TRUE)$ix
    Prob[i]<- sum()
  }
  
}

X = c(1,2,3)
Y= c(4,5,6)
