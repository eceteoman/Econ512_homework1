function ll_gq=ll_gq(par, X, Y)

k=20;
[~, N] = size(X);

[nodes, weights] = qnwnorm(k, par(1), par(2));

beta=nodes*ones(1, N);

fval=zeros(k, N);
val=zeros(k, N);

    for i=1:k
         fval(i, :)=integrand(beta(i,:), X, Y);
         val(i, :)=fval(i, :).*weights(i, 1);
    end
    
int_gq=sum(val);
logint_gq=log(int_gq');
ll_gq=-sum(logint_gq);

end