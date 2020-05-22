altseqtest(n,m,d)={local(p),

p=vector(m);

for(k=1,m,p[k]=alternateseq(n,k,d));

return(p)

}
