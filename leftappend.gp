\\Program to check the case when we only append digits to the left

\\\\\\\\\\\\\\\\\\\\\\\\\


leftappend(n, k, d) = {local(v); \\\\Start of function


e = length(digits(k));

v=vector(n);

for(i=1,n,v[i]=10^e*(d)*((10^i-1)/9) + k);

return(v)

}
