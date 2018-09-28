function [D_A, D_B, D_0 ] = hw2_q1( p_A, p_B, q_A, q_B )
D_A = exp(q_A - p_A)/[1+exp(q_A - p_A)+exp(q_B - p_B)];
D_B = exp(q_B - p_B)/[1+exp(q_A - p_A)+exp(q_B - p_B)];
D_0 = 1/[1+exp(q_A - p_A)+exp(q_B - p_B)];
%D_A is the demand func for good A
%D_B is the demand func for good B
%D_0 is the demand func for the outside option

end

