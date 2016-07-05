q=3;

n=100;
%global P_f;
%global P_f_m;
%P_f =0.3;
%P_f_m=0.9;
t_a= ((1-P_f_m)^q)*q*R(1,n);

t_b_1 = (n/2)*((q*q)*n + (2*q*n)+n)*((P_f+1)/((1-P_f)^2))*((1-P_f_m)^q);
t_b_2 = (n/2)*((2*q*q*n) + (2*q*n) + q + 1)*(1/(1-P_f))*((1-P_f_m)^q);
t_b_3 = (n/2) * (q*q*n + q) * ((1-P_f_m)^q);
t_b = t_b_1 - t_b_2 + t_b_3;
t_c = (P_f_m)*(1-P_f)
