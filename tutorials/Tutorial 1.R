# create a sequence of numbers
w = seq(1, 10)
w

w = 1:10
w

# create a vector variable using "<-"
x <- c(1,2,3,4)
x

# create a vector variable using "="
y = c(1,2,3,4)
y

# list variables
ls()

# basic math
x + y

sqrt(x)

x^2

# statistic functions

set.seed(1)

z1 = rnorm(10)
z1

mean(z1)

var(z1)

sd(z1)

sqrt(var(z1))

z2 = rnorm(10, mean=10, sd=.1)
z2

#remove variables
rm(list=ls())
ls()

# help command
?matrix

# matrix
x = matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x

x = matrix(data=c(1,2,3,4), 2, 2)
x

x = matrix(data=c(1,2,3,4), 2, 2, byrow = TRUE)
x

A = matrix(11:30, 4 ,5)
A

A[3:4,]

##########################################################

data = read.csv("C:\\Users\\Cyber_User\\Documents\\GitHub\\statistics-course\\datasets\\tutorial1.csv", header=T)

dim(data)

names(data)

data = na.omit(data)
write.csv(data, "C:\\Users\\Cyber_User\\Documents\\GitHub\\statistics-course\\datasets\\New_Data.csv")

##########################################################

x = rnorm(1000)
y = rnorm(1000)
plot(x,y)

attach(data)
plot(female, earnings)

library(psych)
describeBy(earnings, group=female) #just one grouping variable

describeBy(data,data$female) #just one grouping variable	
describeBy(earnings,list(data$female,data$region))  #two grouping variables

         