/*Program to check if a sequence of starting numbers (n > 37) with repeatedly appending digits will be always composite or will there be primes

*/


compseqgen(n,k,d) = {local(v);

e = length(digits(k));

v=vector(n);

for(i=1,n,v[i]=10^i*k+d*((10^i-1)/9));
return(v)
}

