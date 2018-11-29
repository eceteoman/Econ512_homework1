function [integrand]=integrand(beta, X, Y)



[T, N] = size(X);
oo=ones(T, 1);
Beta=oo*beta;

%We calculate the individual random effects.
epsilon=Beta.*X;

%To feed into logistic distribution:
ooo=ones(T, N);

succ=(ooo+exp(-epsilon)).^(-1);
fail=ooo-(ooo+exp(-epsilon)).^(-1);


ll=prod((succ.^Y).*(fail.^(ooo-Y)));
%Invididual likelihoods:
[integrand]=ll;
end
