###### Assignment I Solutions #######

### Ques 1 #####

rm(list=ls())
set.seed(12345)
##### part a #####
#### It is a Bernoulli process ###
p<-0.8
#p=0.8
t<-100 #### suppose finite time is 100
#### There are various methods to simulate bernoulli process. 

#### Method 1: Generate a sample of 0s and 1s with success probability  #####
bernoulli.data<-sample(0:1,t,replace=T,prob=c((1-p),p))
plot(bernoulli.data)

### as we generate 100 data points and with prob 0.8 we should have ones
### or successes. The sum of data should be equal to or very close to 80.
### The sum(bernoulli.data) gives 80, so the simulation is correct.

#### Method 2: Use built in function in R #####

alt.bernoulli.data<-rbinom(n=t,size=1,p=0.8)
plot(alt.bernoulli.data)

###sum(alt.bernoulli.data)

###### Method 3 : Genertae a uniform distribution and then classify them
#### as per success probability #######
#alt.bern.data<-ifelse(runif(n=t,min=0,max=1)<=p,1,0)
#plot(alt.bern.data)

###sum(alt.bern.data)


#####  First interarrival time #####
t1<-30
p<-0.8
geom.data<-rgeom(t1,p)
plot(geom.data)
#plot(density(geom.data))
#cdf.geom<-1-((1-p)^(sort(geom.data)+1))
#plot(cdf.geom,type="n",ylim=c(0,1),); lines(cdf.geom)
plot(ecdf(geom.data))


#density.geom<-pgeom(sort(bernoulli.data),prob=p,log=F)
#plot(density.geom)

#data.unif.geom<-runif(t1,0,1)
#alt.exp.data<-as.integer(log(data.unif.geom)/log(1-p))
#cdf.geom<-1-((1-p)^(sort(alt.exp.data)+1))
#plot(cdf.geom,type="n",ylim=c(0,1),); lines(cdf.geom)


#### alternate method to plot CDF
#### if we plot for more time points, this is 
### how we will proceed and we can observe the changes

t2<-1000
geom.data<-rgeom(t2,0.8)
plot(geom.data)
#density.geom<-pgeom(sort(bernoulli.data),prob=0.8,log=F)
#plot(density.geom)
plot(ecdf(geom.data))

hist(geom.data)

#cdf.geom<-1-((1-p)^(sort(geom.data)+1))
#plot(cdf.geom,type="n",ylim=c(0,1),); lines(cdf.geom)

### The number of different values generated is more and thus 
### more distinct probabilities are there. 
#data.unif.geom<-runif(t2,0,1)
#alt.exp.data<-as.integer(log(data.unif.geom)/log(1-p))
#cdf.geom<-1-((1-p)^(sort(data.unif.geom)+1))
#plot(cdf.geom,type="n",ylim=c(0,1),); lines(cdf.geom)



p<-c(0.4, 0.5, 0.6, 0.7, 0.8)
t<-100 #### suppose finite time is 100
binomial.data<-matrix(nrow=t,ncol=length(p))

#### Generate Binomial sample
for(i in 1:length(p))
{
  binomial.data[1:t,i]<-rbinom(n=100,size=50,p=p[i])
  
}
colormat<-c("black","red","green3","orange","blue")
par(mfrow=c(2,length(p)-2))
for(i in 1:length(p))
{
  plot(c(1:t),binomial.data[,i],
       xlab="Time",ylab="Number of Transfusions",
      col=colormat[i])
  abline(h=mean(binomial.data[,i]))
  #plot(density(binomial.data[,i]),main=paste("p=",p[i]))
}
par(mfrow=c(1,1))
plot(density(binomial.data[,1]),ylim=c(0,0.2),xlim=c(0,50),
     main="Density curve of number of transfusions for various 
     values of p")

points(density(binomial.data[,2]),col="red")
points(density(binomial.data[,3]),col="green3")
points(density(binomial.data[,4]),col="orange")
points(density(binomial.data[,5]),col="blue")
#legend("topright",c(p[1:5]),fill=c("black","red","green3","orange","blue"))

par(mfrow=c(2,length(p)-2))

for(i in 1:length(p))
{

  plot(ecdf(binomial.data[,i]),xlab="Time",ylab="Probability",
       col=colormat[i],
       main=paste("CDF of number of transfusions for p=",p[i]))
  
}


