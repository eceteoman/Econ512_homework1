%% Q1
[D_A, D_B, D_0 ] = demand(1,1,2,2)

%% Q2
q=[2 2]';                       
optim_p=@(p) foc(q(1),q(2),p);   
inguess=ones(2,1);           

tol=1e-15;                      

optset('broyden','tol',tol);
tic;
solution_broyden = broyden(optim_p,inguess)'
Broyden_runtime= toc


%% Q3
p_0= ones(2,1);
error= 1;
iter= 1;
tic;

while abs(error)>=tol && iter<10000
    x= onestep(2, 2, p_0);
    error= norm(p_0 - x);
    p_0= x;
    iter= iter+1;
end
solution_Gauss_Seidel= p_0
Gauss_Seidel_runtime= toc

%% Q4

p_0= ones(2,1);
error= 1;
iter= 1;
tic;
while abs(error)>=tol && iter<10000
    x= price_update(2, 2, p_0);
    error= norm(p_0 - x);
    p_0= x;
    iter= iter+1;
end

solution_update= p_0
update_runtime= toc

%% Q5
p_0= ones(2,1);
price= zeros(2,16);
error= 1; 
iter= 1;
foriter=0;
tic;
for q_B=0:0.2:3
    foriter=foriter+1;
    p_0= ones(2,1);
    error=1;
while abs(error)>=tol && iter<10000
    
    x= onestep(2, q_B, p_0);
    error= norm(p_0 - x);
    p_0= x;
    iter= iter+1;
end
price(: , foriter)= p_0;
end

q_b= 0:0.2:3;
p_a= price(1, :)
p_b= price(2, :)
plot ( q_b , p_a , 'b*-', q_b, p_b, 'g');
legend ('p_a', 'p_b');

      