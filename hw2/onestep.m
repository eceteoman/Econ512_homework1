function X = onestep( q_A, q_B, p )
options = optimset('Display','off');
foc_A= @(p_A) 1- p_A*(1- (exp(q_A - p_A)/[1+exp(q_A - p_A)+exp(q_B - p(2))]));
res_A = fsolve(foc_A, p(1), options);

foc_B= @(p_B) 1- p_B*(1- (exp(q_B - p_B)/[1+exp(q_B - p_B)+exp(q_A - p(1))]));
res_B = fsolve(foc_B, p(2), options);


X= [res_A; res_B];

%res_j is the solution of j's FOC 


end

