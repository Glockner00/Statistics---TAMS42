clear; 
close;

n = 10; m = 12; mu1 = 22; mu2 = 16; sigma = 2;
rng(1);

x = normrnd(mu1,sigma,n,1); % Generate n observations X
y = normrnd(mu2,sigma,m,1); % Generate m observations Y

[H,P,CI,STATS] = ttest2(x,y,0.05,'both','equal');

std(x);
std(y);
