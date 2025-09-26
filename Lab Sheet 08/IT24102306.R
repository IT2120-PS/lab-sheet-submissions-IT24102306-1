setwd("C:\\Users\\it24102306\\Desktop\\IT24102306")
getwd()

data<-read.table("Data - Lab 8.txt",header= TRUE)
fix(data)
attach(data)

#Q1

popmean<-mean(Nicotine)
popvar<-var(Nicotine)

#Q2

samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}

colnames(samples)<-n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

#Q3

samplemean<-mean(s.means)
samplevars<-var(s.means)

#Q4

popmean
samplemean

#Q5

truevar=popvar/5
samplevars
truevar

#Exercise
#01

data2<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data2)
attach(data2)

#Q1

popmean_laptops<-mean(Weight.kg.)
popsd_laptops<-sd(Weight.kg.)

#Q2

samples<-c()
n_laptops<-c()

for(i in 1:25){
  S<-sample(Weight.kg., 6,replace=TRUE)
  samples<-cbind(samples,S)
  n_laptops<-c(n,paste('S',i))
}

colnames(samples)<-n_laptops

s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)

#Q3

samplemean<-mean(s.means)
samplesd<-sd(s.means)

popmean
popsd_laptops

truesd=popsd_laptops/6
samplesd
