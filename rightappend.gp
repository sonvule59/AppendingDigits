/*Program to check if a sequence of starting numbers (n > 37) with repeatedly appending digits will be always composite or will there be primes

*/
\\n is the number of appended digits added to both side. Code will stop when both sides have n digits.
\\k is the number intially added in which we want to test
\\d is the value of the digits - range of value is from 1-9
*/
rightappend(n,k,d) = {local(v);


e = length(digits(k));

v=vector(n);

for(i=1,n,v[i]=10^i*k+d*((10^i-1)/9));
return(v)
}

