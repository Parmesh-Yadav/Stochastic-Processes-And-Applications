# QUESTION 1 #
#SIMULATING MARKOV CHAINS #

# PART A #

# CLEAN R VARIABLES
set.seed(0)
rm(list=ls())

# DEFINE THE TRANSITION MATRIX
p <- matrix(c(0.3,0.7,
              0.5,0.5), ncol = 2, byrow = TRUE)

#NO OF STEPS
n <- 50

#STARTING STATE
s1 <- 1
s2 <- 1
s3 <- 1
s4 <- 1
s5 <- 1

#SIMULATING
for (i in 1:n) {
  #GOING TO A NEW STATE ACC TO P
  n_s <- sample(1:nrow(p),size=1,prob = p[s1[length(s1)],])
  s1 <- c(s1,n_s)
}
for (i in 1:n) {
  #GOING TO A NEW STATE ACC TO P
  n_s <- sample(1:nrow(p),size=1,prob = p[s2[length(s2)],])
  s2 <- c(s2,n_s)
}
for (i in 1:n) {
  #GOING TO A NEW STATE ACC TO P
  n_s <- sample(1:nrow(p),size=1,prob = p[s3[length(s3)],])
  s3 <- c(s3,n_s)
}
for (i in 1:n) {
  #GOING TO A NEW STATE ACC TO P
  n_s <- sample(1:nrow(p),size=1,prob = p[s4[length(s4)],])
  s4 <- c(s4,n_s)
}
for (i in 1:n) {
  #GOING TO A NEW STATE ACC TO P
  n_s <- sample(1:nrow(p),size=1,prob = p[s5[length(s5)],])
  s5 <- c(s5,n_s)
}

#PATH OVER TIME
plot(s1,xlab = "TIME",ylab = 'STATE',type="o",col="red",
     main = "50 Step Markov Chain")
points(s2,col="blue",type="o")
points(s3,col="green",type="o")
points(s4,col="orange",type="o")
points(s5,col="purple",type="o")

# PART B #

# CLEAN R VARIABLES
set.seed(0)
rm(list=ls())

# DEFINE THE TRANSITION MATRIX
p <- matrix(c(0.3,0.7,
              0.5,0.5), ncol = 2, byrow = TRUE)

i <- p
p_10 <- 1
p_20 <- 1
p_50 <- 1

for (j in 2:50) {
  i <- i%*%p
  if(j == 10){
    p_10 <- i
  }
  if(j == 20){
    p_20 <- i
  }
  if(j == 50){
    p_50 <- i
  }
}

print(p_10)
print(p_20)
print(p_50)



