
altseqseedsearchtwodigits(n,m,d,a)={local(p,onecount,ones,kcount);

p=vector(m);

for(k=1,m,p[k]=if(altseqcomptest_twodigits(n,k,d,a)==n-1,1,0));

onecount=0;
for(k=1,m,onecount=if(p[k]==1,onecount+1,onecount));

ones=vector(onecount);

kcount=1;

k=1;

while(kcount<=onecount,
ones[kcount]=if(p[k]==1,k,ones[kcount]);
kcount=if(p[k]==1,kcount+1,kcount);
k=k+1
);

return(ones)

}
