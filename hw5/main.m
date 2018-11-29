%Ece Teoman

%% Question 1 (GQ)

clear all 
clc

load('hw5.mat', 'data');

N=100;
T=20;

X=data.X;
Y=data.Y;
Z=data.Z;


beta0=0.1;
s_beta=1;

fun=@(beta)integrand(beta, X, Y);

%Nodes are created:

k=20;

[nodes, weights] = qnwnorm(k, beta0, s_beta);

beta=nodes*ones(1, N);
fval=zeros(k, N);
val=zeros(k, N);

    for i=1:k
         fval(i, :)=fun(beta(i,:));
         val(i, :)=fval(i, :).*weights(i, 1);
    end

int=sum(val);
l=prod(int');

logint=log(int');
ll=sum(logint);

%% Question 2 (MC)

n_nodes=100;

beta_mc=(beta0.*ones(1, n_nodes)+s_beta.*randn(1, n_nodes))'*ones(1, N);

fval_mc=zeros(n_nodes, N);

for i=1:n_nodes
    fval_mc(i, :)=fun(beta_mc(i,:));
end

int_mc=mean(fval_mc);
logint_mc=prod(int_mc');

logint_mc=log(int_mc');
logll_mc=sum(logint_mc);

%% Question 3

par_0=[beta0, s_beta];
A=[0, -1];
b=0;

% GQ:

l_gq=@(par)ll_gq(par, X, Y);
[par_gq, ll_gq] = fmincon(l_gq,par_0,A,b);


% MC:

l_mc=@(par)ll_mc(par, X, Y);
[par_mc, ll_mc] = fmincon(l_mc,par_0,A,b);

%% Question 5

disp('GQ:')

disp('Initial value:')
disp(par_0)

disp('MLE:')
disp(par_gq)

disp('Maximum LogLikelihood:')
disp(ll_gq)

%% 

disp('MC')

disp('Initial value:')
disp(par_0)

disp('MLE:')
disp(par_mc)

disp('Maximum LogLikelihood:')
disp(ll_mc)












