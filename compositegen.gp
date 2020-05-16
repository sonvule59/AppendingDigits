## Program to check if a sequence of starting numbers (n > 37) with repeatedly appending digits will be always composite or will there be primes
## Son Vu
## Advisor: Dr. David Garth

compseqgen(n, d, u) = {local(v,p, f);

v = vector(n);
v[1] = d;
v[2] = u;

p = vector(n);

for(i = 3, n, v[i] =1);
for(i = 1, n-1, for(j = 1, i+1, p[i] = p[i] +10^(j-1)*v[i-j+2]));

return(p)

}