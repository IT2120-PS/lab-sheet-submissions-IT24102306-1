setwd("C:\\Users\\It24102306\\Desktop\\IT24102306")
getwd()

#Question 1
#(i)binomial distribution
#(ii)
dbinom(40,44,0.92)
#(iii)
pbinom(35,44,0.92,lower.tail=TRUE)
#(iv)
1 - pbinom(37, 44, 0.92, lower.tail = TRUE)
pbinom(37, 44, 0.92, lower.tail = FALSE)
#(v)
pbinom(42,44,0.92,lower.tail=TRUE)-pbinom(39,44,0.92,lower.tail=TRUE)

#Question 2
#(i)Number of babies born in a hospital on a given day
#(ii)poisson distribution with lambda=5
#(iii)
dpois(6,5)
#(iv)
ppois(6,5,lower.tail=FALSE)

#Exercise
#Q1
#(i)binomial distribution
#(ii)
1-pbinom(46,50,0.85,lower.tail=TRUE)
pbinom(46,50,0.85,lower.tail=FALSE)

#Q2
#(i)Number of call per hour
#(ii)poisson distribution
#(iii)
dpois(15,12)


