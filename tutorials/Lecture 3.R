



setwd("*****")
optime_data=read.csv('Optime.csv')
optime=optime_data$optime
hist(optime, breaks=15, freq=FALSE)

n=length(optime)
beta.moment<-mean(optime)/(var(optime)*(n-1)/n)
alpha.moment<-mean(optime)*beta.moment
c(alpha.moment, beta.moment)

x<-seq(0, 10, 0.1)
lines(x, dgamma(x, alpha.moment, beta.moment), col='blue', lwd=2)

1-pgamma(8,3*alpha.moment,beta.moment)
pgamma(4,2*alpha.moment,beta.moment)

x=c(0,0,0,1)
n=length(x)
p=seq(0, 1, by=0.001)
y1=(p^(sum(x)))*((1-p)^(n-sum(x)))
y2=(sum(x))*log(p)+(n-sum(x))*log(1-p)
plot(p, y1, xaxt  = "n", type="l")
axis(side = 1, at = c(0, 0.25, 0.5, 0.75, 1))
plot(p, y2, xaxt  = "n", type="l")
axis(side = 1, at = c(0, 0.25, 0.5, 0.75, 1))

x=c(1,1,1,0)
n=length(x)
p=seq(0, 1, by=0.001)
y1=(p^(sum(x)))*((1-p)^(n-sum(x)))
y2=(sum(x))*log(p)+(n-sum(x))*log(1-p)
plot(p, y1, xaxt  = "n", type="l")
axis(side = 1, at = c(0, 0.25, 0.5, 0.75, 1))
plot(p, y2, xaxt  = "n", type="l")
axis(side = 1, at = c(0, 0.25, 0.5, 0.75, 1))

x=c(1,1,0,0)
n=length(x)
p=seq(0, 1, by=0.001)
y1=(p^(sum(x)))*((1-p)^(n-sum(x)))
y2=(sum(x))*log(p)+(n-sum(x))*log(1-p)
plot(p, y1, xaxt  = "n", type="l")
axis(side = 1, at = c(0, 0.25, 0.5, 0.75, 1))
plot(p, y2, xaxt  = "n", type="l")
axis(side = 1, at = c(0, 0.25, 0.5, 0.75, 1))

n=length(optime)
mean.op=mean(optime)
sum.log=sum(log(optime))
n=length(optime)
dif.gam=function(alpha){sum.log+n*log(alpha/mean.op)}-n*digamma(alpha)
dif.gam(1:5)
alpha.MLE=uniroot(dif.gam, c(4,5))$root
beta.MLE=alpha.MLE/mean.op

pgamma(4, 2*alpha.MLE, beta.MLE) 
1 - pgamma(8, 3*alpha.MLE, beta.MLE) 
