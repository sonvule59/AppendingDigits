altseqtest(n,m,k,d)={local(p),

p=vector(m);

for(k=1,m,p[i]=alternateseq(n,k,d));

return(p)

}
