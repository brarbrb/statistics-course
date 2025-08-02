snow <- c(1,1,3,3,3,4,5,5,5,5,5,5,5,5,6,10,10,10,15,15,15,15,20,20,20,20,20, 20,30,30,35,40,40,40,40,45,65)

X=snow
col1="black"
col2="blue"

my.qqplot1 <- function(X, col1="black", col2="blue"){
  n = length(X)
  val = ((1:n)-1/2)/n
  X.sort = sort(X)
  norm.q = qnorm(val,mean=mean(X.sort),sd=sd(X.sort))
  plot(norm.q,X.sort,col=col1)
  abline(0,1,col=col2)
}


my.qqplot2 <- function(X, col1="black", col2="blue"){
  n = length(X)
  val = ((1:n)-1/2)/n
  X.sort = sort(X)
  geom.q = qgeom(val,prob=1/mean(X.sort))
  plot(geom.q,X.sort,col=col1)
  abline(0,1,col=col2)
}


my.qqplot1(snow)

my.qqplot2(snow)


###########################################################################

sample_size=5
sample=rnorm(sample_size)
sample
m1=mean(sample)
m1
m2=mean(sample^2)
m2


num_samples=2000
sample_size=5
vec=rep(0, sample_size*num_samples)
mat=matrix(vec, nrow=sample_size, ncol=num_samples)
m1vec=rep(0, num_samples)
m2vec=rep(0, num_samples)
for (j in 1:num_samples){
  sample=rnorm(sample_size)
  mat[ ,j]=sample
  m1vec[j]=mean(sample)
  m2vec[j]=mean(sample^2)
}
mat[ ,1:3]
m1vec[1:3]
m2vec[1:3]
mean(m1vec)
mean(m2vec)
hist(m1vec, freq=FALSE)
hist(m2vec, freq=FALSE)


####################################################

x=seq(-3,3, 0.01)
hist(m1vec, freq=FALSE, ylim=c(0,1))
lines(x, dnorm(x, 0, 1/sqrt(5)), col="blue")

num_samples=2000
sample_size=25
vec=rep(0, sample_size*num_samples)
mat=matrix(vec, nrow=sample_size, ncol=num_samples)
m1vec=rep(0, num_samples)
m2vec=rep(0, num_samples)
for (j in 1:num_samples){
  sample=rnorm(sample_size)
  mat[ ,j]=sample
  m1vec[j]=mean(sample)
  m2vec[j]=mean(sample^2)
}
mat[ ,1:3]
m1vec[1:3]
m2vec[1:3]
mean(m1vec)
mean(m2vec)
hist(m1vec, freq=FALSE)
hist(m2vec, freq=FALSE)

x=seq(-3,3, 0.01)
hist(m1vec, freq=FALSE, ylim=c(0,2))
lines(x, dnorm(x, 0, 1/sqrt(25)), col="blue")

x=seq(-3,3, 0.01)
plot(x, dnorm(x, 0, 1), ylim=c(0,2), xlab="sample mean", ylab="density", type="l")
lines(x, dnorm(x, 0, 1/sqrt(5)), col="blue")
lines(x, dnorm(x, 0, 1/sqrt(25)), col="red")