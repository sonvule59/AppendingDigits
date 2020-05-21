/*Program to check if a sequence of starting numbers (n > 37) with repeatedly appending digits will be always composite or will there be primes
Son Vu
Advisor: Dr. David Garth
Truman State University
 n is the number of digits including appending digits
 d is the tens digit
u is the ones digit
*/


compseqgen(n,k,d) = {local(v);

e = length(digits(k));

v=vector(n);

for(i=1,n,v[i]=10^i*k+d*((10^i-1)/9));return(v)
return(v)
}

