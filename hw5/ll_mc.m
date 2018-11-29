function ll_mc=ll_mc(par, X, Y)

m=100;
[~, N] = size(X);

beta_mc=(par(1).*ones(1, m)+par(2).*randn(1, m))'*ones(1, N);

fval_mc=zeros(m, N);

    for i=1:m
        fval_mc(i, :)=integrand(beta_mc(i,:), X, Y);
    end

int_mc=mean(fval_mc);
logint_mc=log(int_mc');
ll_mc=-sum(logint_mc);

end