\\Program to check the case when we only append digits to the left

\\\\\\\\\\\\\\\\\\\\\\\\\

\\n is the number of appended digits added to both side. Code will stop when both sides have n digits.
\\k is the number intially added in which we want to test
\\d is the value of the digits - range of value is from 1-9

leftappend(n, k, d) = {local(v); \\\\Start of function


e = length(digits(k));

v=vector(n);

for(i=1,n,v[i]=10^e*(d)*((10^i-1)/9) + k);

return(v)

}
