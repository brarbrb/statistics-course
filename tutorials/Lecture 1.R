snow <- c(1,1,3,3,3,4,5,5,5,5,5,5,5,5,6,10,10,10,15,15,15,15,20,20,20,20,20, 20,30,30,35,40,40,40,40,45,65)
table(snow)
hist(snow)

m=mean(snow)
m
med=median(snow)
med
sqrt(mean((snow-m)^2))
sqrt(mean((snow-med)^2))

x=seq(-3, 3, by=0.001)
plot(x, pnorm(x, 0, 1), yaxt="none", type="l", col = "red")
axis(side=2, at = seq(0,1, by=0.25))

y=rnorm(4)
y
lines(ecdf(y), col="black")

z=rnorm(15)
lines(ecdf(z), col="blue")

v=rnorm(30)
lines(ecdf(v), col="green")

lines(ecdf(rnorm (200, 0, 1)), col="yellow")