\\\\\\ Alternating digits 


altgen(n, k, d) = {

e = length(digits(k));
v=vector(n);


\\\ Divide into two cases: i is even or i is odd

for(i=1,n,v[i]= if(i%2 == 0,((10^(e+(i/2)) + 1)*((10^(i/2)- 1)/9)*d + 10^(i/2) * k),
((10^(e+(i+1)/2)*(10^((i-1)/2) - 1)/9)+(10^((i+1)/2) -1 )/9)*d + (10^((i+1)/2))*k;));

return (v);
}