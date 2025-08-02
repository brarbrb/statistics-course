grades = read.csv("Grades.csv")
attach(Grades)

grades = as.numeric(unlist(Grades))

# Q1 B
intervals = seq(40,100,10)
labels= c()
for (i in 1:length(intervals)) { 
  labels[i]=toString(intervals[i])
}
# create a histogram
h = hist(grades, breaks=intervals, xlab="Grades", col="blue")
axis(1, at= intervals, labels=labels)


# Q1 C
mean = mean(grades)
mean
median = median(grades)
median
Q
quantiles = quantile(grades)
quantiles
var = var(grades)
var
std = sd(grades)
std
summary(grades)
min = range(grades)[1]
min
max = range(grades)[2]
max
range_of_values = max-min
range_of_values
range_of_quarters = Q3-Q1
range_of_quarters

# Q1 D
boxplot(grades, horizontal=TRUE)
        
# Q2
Q1=qnorm(0.25)
Q3=qnorm(0.75)
IQR=Q3-Q1
IQR

UF=Q3+1.5*IQR
LF=Q1-1.5*IQR

UF
LF

