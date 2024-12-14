clear; close;
n = 80; p = 0.3;
rng(1);
x = binornd(n,p,1000,1); % one can think of x as 1000 samples 
                         % (each sample size is 1)

phat = x/n; % these are 1000 estimated values of p

lower_lim = phat - 1.96*sqrt(phat.*(1-phat)/n); % this is a vector with 1000 values
upper_lim = phat + 1.96*sqrt(phat.*(1-phat)/n); % this is a vector with 1000 values

missing = sum(lower_lim > p) + sum(upper_lim < p);

% where ‘missing’ gives you the number of intervals not containing the real
% value p = 0.3. Compare this number with the expected number 50 
% (is it far away from 50 or very close to 50? why?)