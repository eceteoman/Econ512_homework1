function nls = ssnls( beta, X, y ) 

nls =sum((y-exp(X*beta)).^2);

end

