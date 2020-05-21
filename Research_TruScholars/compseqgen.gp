

compseqgen(n,k,d) = {local(v);

v=vector(n);

for(i=1,n,v[i]=10^i*k+d*((10^i-1)/9);

return(v);

}

