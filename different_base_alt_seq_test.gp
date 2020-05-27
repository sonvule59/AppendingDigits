altseqtestbaseb(n,m,d,b)={local(p,onecount,ones,kcount);

\\This program runs through all values of k from 1 to m, 
\\generates the alternating appending sequence for that value of k, in base b
\\with appending digit d, up to n copies of d on each side of k
\\and determines whether that sequence is composite.
\\then the program outputs the base b values of all k between 1 and m for which the 
\\alternating sequence is composite.

p=vector(m);

\\the following loop runs through all the values of k from 1 to n, converts those numbers to base b
\\and determines whether the appending sequence is composite up to the first n-1 terms.  If the output
\\of the program altseqcomptestbaseb is n-1, then the sequence is composite up to n-1 terms.
\\if the output of altseqcomptestbaseb is less than n-1, then the alternating appending sequence
\\has a prime number somewhere before the last term of the appending sequence.

for(k=1,m,p[k]=if(altseqcomptestbaseb(n,k,d,b)==n-1,1,0));

onecount=0;
for(k=1,m,onecount=if(p[k]==1,onecount+1,onecount));

ones=vector(onecount);

kcount=1;

k=1;

while(kcount<=onecount,
ones[kcount]=if(p[k]==1,fromdigits(digits(k,b)),ones[kcount]);
kcount=if(p[k]==1,kcount+1,kcount);
k=k+1
);

return(ones)

}
