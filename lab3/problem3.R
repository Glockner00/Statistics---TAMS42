#Choose a value for c so that you have a rectangle which
#contains the region I (for example you can choose c = 1, why?)

# Once you have chosen c, draw a figure containing both the region I and the rectangle

# To estimate |I|, we use the Monte Carlo method. First, let n = 20 and we now generate n uniform
# random variables in the rectangle (a, b) × (0, c). To do this, write commands in the R-file:

rm(list=ls()) # this is to clear all previous data
a = 0; 
b = 0.5; 
c = 1; 
n = 10000;
set.seed(1) # fix random generator seed (same random simulations each time)
x=runif(n, min=0, max=b) # generate n uniform in the rectangle for x
y=runif(n, min=0, max=c) # generate n uniform in the rectangle for y

# Now we want to see how many such uniform random points have landed in the region I. To this end,
# continue to write commands in the R-file:

y_curve=(1/sqrt(2*3.14))*exp(-x^2/2) # the normal curve
f_n=sum(y<y_curve) # count how many in the region I
area_I=(b-a)*c*f_n/n # compute the area of I
print(area_I)

# The output area_I is the estimated area of I. The (almost) accurate area of I can be found from the
# Normal table |I| = P(0 < N(0, 1) < 0.5). Compare the estimated area and the (almost) accurate area.