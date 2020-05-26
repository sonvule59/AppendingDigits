altseqtest(n,m,d)={local(p);

p=vector(m);

\\for(k=1,m,p[k]=altseqcomptest(n,k,d));

for(k=1,m,p[k]=if(altseqcomptest(n,k,d)==n-1,1,0));

return(p)

}
