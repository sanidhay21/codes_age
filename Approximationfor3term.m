global P_f;

x= (P_f +1)/((1-P_f)^3);
n=100000;
t=[];
s=[];
for j=1:30
   
    
        t(j) = ((P_f)^(j-1)) * (j*j);
         s(j)=sum(t);
end