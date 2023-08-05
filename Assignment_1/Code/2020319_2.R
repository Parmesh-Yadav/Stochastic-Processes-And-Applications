# QUESTION 1 #
# MAGNITUDES OF VARIOUS EARTHQUAKES FOR A FIXED SITE #
# BERNOULLI PROCESS #

# PART A #

rm(list=ls()) # CLEAN R ENVR
t <- 100 # TIME t
lambda <- 10
poisson_rv_data = rpois(t,lambda)
plot(density(poisson_rv_data),
     xlab="Time t",
     ylab="P[Number of arrivals at time t", 
     main = "Density of Number of Arrivals until time t"
     )

# END OF PART A #

# PART B #

rm(list=ls()) # CLEAN R ENVR
t <- 100 # TIME t
lambda <- 20
poisson_rv_data = rpois(t,lambda)
plot(density(poisson_rv_data),
     xlab="Time t",
     ylab="P[Number of arrivals at time t", 
     main = "Density of Number of Arrivals until time t"
)

# END OF PART B #

# PART C #

# COMBINED PROCESSES #

rm(list=ls()) # CLEAN R ENVR
t <- 100 # TIME t
lambda <- 15
poisson_rv_data = rpois(t,lambda)
plot(density(poisson_rv_data),
     xlab="Time t",
     ylab="P[Number of arrivals at time t", 
     main = "Density of Number of Arrivals until time t"
)

# EXPONENTIAL RV OF THE COMBINED PROCESS #

rm(list=ls()) # CLEAN R ENVR
t <- 100 # TIME t
lambda <- 15
poisson_rv_data = rexp(t,lambda)
plot(ecdf(poisson_rv_data),
     xlab="Time t",
     ylab="P[Number of arrivals at time t", 
     main = "Density of Number of Arrivals until time t"
)

#END OF PART C #



