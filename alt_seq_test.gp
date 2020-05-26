altseqtest(n,m,d)={local(p),

p=vector(m);

for(k=1,m,p[k]=altseqcomptest(n,k,d));

return(p)

}
