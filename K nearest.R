library(readxl)
spambase<-read_xlsx("spambase.xlsx")
n = dim(spambase)[1]
id=sample(1:n,floor(0.5*n))
data <- spambase[id,]
newdata <- spambase[-id,]

n1= 

Knearest <- function(data,k,newdata){
  C <- (t(X)%*%Y)/(sqrt(sum(X^2))*sqrt(sum(Y^2)))
  d <- 1- C
}

X = c(1,2,3)
Y= c(4,5,6)
