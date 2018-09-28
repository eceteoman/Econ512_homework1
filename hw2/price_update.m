function x = price_update( q_A, q_B, p )
D_A= exp(q_A - p(1))/[1+exp(q_A - p(1))+exp(q_B - p(2))];
D_B= exp(q_B - p(2))/[1+exp(q_A - p(1))+exp(q_B - p(2))];
x= [1/(1-D_A); 1/(1-D_B)];


end

