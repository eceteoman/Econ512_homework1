function negll = negll( beta, X, y ) 

negll =-sum(-exp(X*beta) + X*beta.*y - log(factorial(y)));

end

