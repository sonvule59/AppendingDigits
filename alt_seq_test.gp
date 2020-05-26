altseqtest(n,m,d)={local(p),

p=vector(m);

\\for(k=1,m,p[k]=alternateseq(n,k,d));

for(k=1,m,p[k]=if(alternateseq(n,k,d)==
return(p)

}
