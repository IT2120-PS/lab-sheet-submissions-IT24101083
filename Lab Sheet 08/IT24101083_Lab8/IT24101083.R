setwd("/Users/jiruththisiva/Desktop/Lab_8")
data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)

#Q1
weights <- data$Weight

popmean<-mean(weights)
popsd<-sd(weights)

popmean
popsd

#Q2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(weights,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples)=n

s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

#Q3
samplemean<- mean(samples)
samplesd<- sd(samples)

samplemean
samplesd

popmean
samplemean 

popsd / sqrt(6)
samplesd    


