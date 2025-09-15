setwd("C:\\Users\\it24102306\\Desktop\\IT24102306")
getwd()
data<-read.table("Data.txt",header=TRUE,sep=",")
fix(data)
attach(data)

names(data)<-c("X1","X2")
attach(data)
hist(X2,main="Histogram for Number of Shareholders")

histogram<-hist(X2,main="Histogram for number of Shareholders",breaks=seq(130,270,lenght=8),right=FALSE)
?hist

breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
classes <- c()
for (i in 1:length(breaks)-1) {
  classes[i] <- paste0("[", breaks[i], ", ", breaks[i+1], "]")
}
cbind(classes = classes, Frequency = freq)


lines(mids,freq)
plot(mids,freq,type='1',main="Frequency Polygon for Shareholders",xlab="Shareholders",ylab="Frequency",ylim=c(0,max(freq)))

cum.freq <- cumsum(freq)
new <- c()
for (i in 1:length(breaks)){
  if(i == 1){
    new[i] = 0
  } else {
    new[i] = cum.freq[i-1]
  }
}
plot(breaks, new, type = 'l', main = "Cumulative Frequency Polygon for Shareholders", 
     xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))
cbind(Upper = breaks, CumFreq = new)




#Exercise
setwd("C:\\Users\\it24102306\\Desktop\\IT24102306")
getwd()

#1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE)
head(Delivery_Times)
attach(Delivery_Times)

breaks <- seq(20,70,by=(70-20)/9)
h1 <- hist(Delivery_Time.minutes., main="Delivery Time(minutes)", breaks=breaks, right=TRUE)


freq_table <- hist(Delivery_Time.minutes., breaks=breaks,)
cum_freq <- cumsum(freq_table$counts)

plot(freq_table$mids, cum_freq, type="o", main="Cumulative Frequency Polygon", xlab="Delivery Time", ylab="Cumulative Frequency")
