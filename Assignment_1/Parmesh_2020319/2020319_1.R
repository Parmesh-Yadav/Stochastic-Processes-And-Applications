# QUESTION 1 #
# MAGNITUDES OF VARIOUS EARTHQUAKES FOR A FIXED SITE #
# BERNOULLI PROCESS #

# PART A #

rm(list=ls()) # CLEAN R ENVR
p <- 0.4 # PROBABILITY OF SUCCESS
t <- 200 # NO. OF TRIALS
bernoulli_scatter_plot<-rbinom(n=t,size=1,p = 0.4)
plot(bernoulli_scatter_plot,
     main="Scatter Plot for bernoulli process with p = 0.4",
     xlab="Instances of Earthquake",
     ylab="Success = 1 / Failure = 0"
     )

# END OF PART A #

# PART B #

rm(list=ls()) # CLEAN R ENVR
p <- 0.4 # PROBABILITY OF SUCCESS
t <- 200 # NO. OF TRIALS
geometric_rv_data<-pgeom(0:t,p)# GEOMETRIC RV
plot(geometric_rv_data,
     type="l",
     xlab="X_1: Geometric RV",
     ylab="P[X_1 < x]",
     ylim=c(0,1),
     main=  "CDF of first interarrival time with p = 0.4"
     )

# END OF PART B #

# PART C #
#?rbinom/
rm(list=ls()) # CLEAN R ENVR
p <- c(0.4,0.9) # PROBABILITY OF SUCCESS
t <- 50 # NO. OF TRIALS
binomial_rv_data <- matrix(nrow=t,ncol=length(p)) # BINOMIAL RV
for(i in 1:length(p)) # GENERATING BINOMIAL SAMPLE
{
  binomial_rv_data[1:t,i]<-rbinom(n=50,size=t,p=p[i])
}
plot(density(binomial_rv_data[,1]),
     ylim=c(0,1),
     xlim = c(0,t),
     main = "Density curve of number of earthquakes with mag >= 6 for different values of p",
     xlab = "No of success n",
     ylab = "P[no. of success = n]"
     )
points(density(binomial_rv_data[,1]),col="red")
points(density(binomial_rv_data[,2]),col="blue")
legend("topleft",legend = c("p = 0.4","p = 0.9"),c(p[1:2]),fill=c("red","blue"))

#END OF PART C #



