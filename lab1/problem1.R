rm(list=ls()) # this is to clear all previous data
n=600 # n throws of the die
set.seed(1) # fix random generator seed (same random simulations each time)
throw=sample(1:6, n, replace=TRUE) # simulate n throws of the die

# calculate the frequency
for (i in 1:6) {
  print(paste("Frequency of", i, ":", sum(throw == i)))
}

# Calculate frequencies for each value from 1 to 6
# vectorized method
# The function sapply iterates over the values from 1 to 6, and for each value 
# i, it computes how many times i appears in the throw vector.
frequencies <- sapply(1:6, function(i) sum(throw == i))

sample_mean <- mean(throw) # Sample mean


sample_standard_deviation <- sd(throw) # Sample standard deviation

# Print the values
#sample_mean
#sample_standard_deviation
#frequencies