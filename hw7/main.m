clear all

global v0 p1 p2 w1 w2 beta grid kappa;

% We assign given parameter values.

beta = 1/1.05;
kappa=10;
s = 2;
quality=10;


%We create the grid space:
 
grid = 1:1:30;
grid = grid';

% We set initial value of value function to 0 everywhere.

v0 = ones(30,30);
p1 = zeros(30,30);
p2 = zeros(30,30);

% We assign values of convergence criteria
% and maximum number of allowed iterations.

dif = 1000000;
iter = 1;
tol = 0.001;
maxiter = 100000;


% We do a standard value function iteration:

while dif>tol && iter < maxiter
    
    for i = 1:30
        w1 = grid(i);
        for j=1:30 
            w2 = grid(j);
            p1upd = fminbnd(@valfun1,0,10);
            v1(w1,w2) = -valfun1(p1upd);
            pp(w1,w2) = p1upd;
        end
    end
    
    dif = norm(v1-v0);
    v0 = v1
    p1=pp;
    p2=pp';
    iter = iter+1;
end
