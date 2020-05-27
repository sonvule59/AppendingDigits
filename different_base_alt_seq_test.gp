\\\\This program tests whether a sequence is composite
\\\\ with the k input of a number in different bases

\\n is the number of appended digits added to both side. Code will stop when both sides have n digits.
\\k is the number intially added in which we want to test
\\d is the value of the digits - range of value is from 1-9

\\This program outputs the first value of i for which s_i is prime, where s_i is the alternate appending sequence
\\If i=n-1, then the whole sequence is composite

altseqcomptestbaseb(n, k, d,b) = {

z = fromdigits(digits(k,b));

e = length(digits(z));

v=vector(n);

\\\ Divide into two cases: i is even or i is odd

i=2;

v[1]=10*z+d;

while(i<n && isprime(fromdigits(digits(v[i-1])),2)==0,
v[i]= if(i%2 == 0,((10^(e+(i/2)) + 1)*((10^(i/2)- 1)/9)*d + 10^(i/2) * z),
((10^(e+(i+1)/2)*(10^((i-1)/2) - 1)/9)+(10^((i+1)/2) -1 )/9)*d + (10^((i+1)/2))*z);
i=i+1
);

return(i-1)

}
