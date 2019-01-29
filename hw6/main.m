clear all

global y0  delta ro mu sigma j gridp gridy prob

%Parameter values given in the question

delta=0.95;
mu=0.5;
ro=0.5;
sigma=0.1;
Z=21;
N=101;


%Now we create the grid space for p using Tauchen method

[prob,gridp]=tauchen(Z,mu,ro,sigma);

%Grid for stock of lumber

gridy=0:1:100;

%Value function iteration

v0=zeros(N,Z);

dif = 1000000;
iter = 0;
tol = 0.001;
maxiter = 100000;

while dif>tol && iter < maxiter
    
    for i=1:101      
        y0= gridy(i);     
        for j=1:21
            p0=gridp(j);       
            y1=fminbnd (@valfun, 0, y0);
            v1(i,j) = -valfun(y1);
            y11(i,j) = y1;
            
        end     
    end
    
    dif = norm(v1-v0);
    v0 = v1;
    iter = iter+1;
end
