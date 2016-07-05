clc;
close all; clear all;

n=100;
M=70;
p=0.3;
g =[];
f=[];
h=[];
global P_f;

for i=1:n
    a= factorial(n);
    b = factorial(i) * factorial(n-i);
    c= a/b;
    g(i) = ((p/(1-p))^i) * c;
end
d = sum(g);

for j=1:n
    
    for k=1:j
        f(k) = (1 - 2^((k-1)-(n-M)));
    end
    e= prod(f);
    
    h(j) = ((p/(1-p))^j) * e * (factorial(n)/(factorial(j)*factorial(n-j)));
end

l=sum(h);
P_f = ((1-p)^n)*(d-l);
