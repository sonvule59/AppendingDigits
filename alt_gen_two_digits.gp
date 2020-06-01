\\\\\\ Alternating digits 

\\n is the number of appended digits added to both side. Code will stop when both sides have n digits.
\\k is the number intially added in which we want to test
\\d is the value of the digits - range of value is from 1-9

\\This program generates the composite sequence kd, dkd, dkdd, ddkdd, ddkddd, etc, up to n ds on each side of k

altgentwodigits(n, k, d,a) = {
    
e = length(digits(k));
v=vector(n);
\\\ Divide into two cases: i is even or i is odd
for(i=1,n,v[i]= if(i%2 == 0,((10^(e+(i/2))*d+a)*((10^(i/2)- 1)/9) + 10^(i/2) * k),
(10^(e+(i+1)/2)*(10^((i-1)/2) - 1)/9)*d+((10^((i+1)/2) -1 )/9)*a + (10^((i+1)/2))*k;));
return (v);
}
