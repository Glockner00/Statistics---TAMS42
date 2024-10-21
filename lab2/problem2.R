rm(list=ls()) # this is to clear all previous data
n = 1000; # parameter
p = 0.3 # parameter
bino_cdf = 0 # the cdf of a Binomial X

# commands below give values of the cdf of a Binomial X at 0 to n
for(i in 1:(n+1))
{
  bino_cdf[i] = pbinom(i-1, size=n, prob=p)
}


# Compute the corresponding Normal cdf at points at points 0, 1, . . . , n
norm_cdf = 0 # the corresponding normal cdf
for(i in 1:(n+1))
{
  norm_cdf[i] = pnorm(i-1, n*p, sqrt(n*p*(1-p)))
}

# What we want to do now is to compare the Binomial cdf and the corresponding Normal cdf at points
# 0, 1, . . . , n, and find the maximal absolute difference of these two cdfs at these points.


print(max(abs(bino_cdf-norm_cdf)))

