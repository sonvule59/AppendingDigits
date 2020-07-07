rightappend101base2(n, k) = {

v=vector(n);

for(i=1,n,v[i]=2^(2i-1)*k+(4^i-1)/3);

return (v);
}
