#part a 
t <- 25
data <- rpois(100, lambda = 10*t)
plot(density(data), xlab="Time", ylab="Number of arrivals", 
     xlim=c(0,1000), ylim = c(0, 0.040),
     main = "Desnity for number of arrivals until time t")


#part b

t<-25
data <- rpois(100, lambda = 20*t)
plot(density(data), xlab="Time",ylab="Number of arrivals", xlim = c(0,1000), ylim= c(0, 0.050),
     main = "Density for number of arrivals until time t")

