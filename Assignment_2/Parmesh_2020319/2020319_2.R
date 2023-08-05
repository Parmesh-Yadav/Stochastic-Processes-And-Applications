# QUESTION 2 #
# SIMULATING 1-D RANDOM WALK #
# GAMBLERS RUIN PROBLEM #
# CLEAN R VARIABLES
set.seed(0)
rm(list=ls())
# STARTING STATES #
a <- 5
# STORE THE OUTCOMES #
s <- a
# SUCCESS PROBABILITIES #
p = c(0.2,0.8)
# SIMULATING #
# USING INFINITE LOOP #
while(2 == 2){
  output <- sample(0:1,1,replace = TRUE, prob = p)
  if(output == 1){
    a <- a + 1
  }
  else{
    a <- a - 1
  }
  s <- c(s,a)
  if(a == 10 || a == 0){
    break
  }
}

plot(s,xlab = "TIME",ylab = 'GAMBLERS MOMNEY',type="o",col="red",
     main = "MOVEMENT OF GAMBLER A")

