

### Ques 1 #####


rm(list=ls())
set.seed(12345)
##### part a #####
#### It is a Bernoulli process ###
p<-0.4

t<-100 #### 100 trials
#### There are various methods to simulate bernoulli process. 

#### Method 1: Generate a sample of 0s and 1s with success probability  #####
bernoulli.data<-sample(0:1,t,replace=TRUE,prob=c((1-p),p))
plot(bernoulli.data, xlab="Earthquake occurrance", ylab="Failure=0/Success=1", 
     main = "Plot for Bernoulli process with p = 0.4")



##### part b #####

rm = (list=ls())
set.seed(12345)

t1<-100
p1<-0.4

geom.data<-pgeom(0:t1,p1)

plot(geom.data, type="l", xlab="X1:First Interarrival time", ylab="P(X1<=x)", 
     ylim=c(0,1), main=  "Interarrival time in the case of success for p = 0.4")


rm = (list=ls())
set.seed(12345)

p<-c(0.4,0.9)
t<-100 #### suppose finite time is 100
binomial.data<-matrix(nrow=t,ncol=length(p))

#### Generate Binomial sample
for(i in 1:length(p))
{
  binomial.data[1:t,i]<-rbinom(n=100,size=50,p=p[i])
}

colormat<-c("orange","purple")

plot(density(binomial.data[,1]), ylim=c(0,1), xlim = c(0,50), 
     main = "Density curve for number of earthquakes for different values of p")
  
points(density(binomial.data[,1]),col="orange")
points(density(binomial.data[,2]),col="purple")


