\\This program generates alternating sequence, similar to altgen program,
\\ but we consider starting the first appended digit from the left, and then go to the right 

reverse_altgen(n, k, d) = {
    
e = length(digits(k));
v=vector(n);

\\\ Divide into two cases: i is even or i is odd

for(i=1,n,v[i]= if(i%2 == 0,(((10^(i/2)-1)/9 + ((10^(i-e+1))+1))*d + (10^(i/2)) * k),
(10^(e+i-1)*d + (10^((i-1)/2))*k)));

return (v);
}