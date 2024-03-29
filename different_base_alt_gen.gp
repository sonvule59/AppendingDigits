\\\\ Different base generator
\\\\\\ Alternating digits 

\\n is the number of appended digits added to both side. Code will stop when both sides have n digits.
\\k is the number intially added in which we want to test
\\d is the value of the digits - range of value is from 1-9

\\This program generates the composite sequence kd, dkd, dkdd, ddkdd, ddkddd, etc, up to n d's on each side of k

altgenbaseb(n, k, d,b) = {

v=vector(n);

basebk=fromdigits(digits(k,b));

e = length(digits(basebk));

\\\ Divide into two cases: i is even or i is odd

for(i=1,n,v[i]= if(i%2 == 0,((10^(e+(i/2)) + 1)*((10^(i/2)- 1)/9)*d + 10^(i/2) * basebk),
((10^(e+(i+1)/2)*(10^((i-1)/2) - 1)/9)+(10^((i+1)/2) -1 )/9)*d + (10^((i+1)/2))*basebk;));

for(i=1,n,v[i]=fromdigits(digits(v[i]),b));

return (v);



}
