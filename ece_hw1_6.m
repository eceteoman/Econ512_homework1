
%imported the data
%excluded rows with blank or unimportable cells
%4389 data points are left
betanot=ones(4389, 1);
X=[betanot, VarName3, VarName4, VarName6];
Y=VarName5;
beta=(inv(X'*X))*(X'*Y)

error=Y-(X*beta);
errorsq= error.^2;
cov=sum((errorsq)/(length(Y)-3))*inv(X'*X);
stderror= [sqrt(cov(1,1)), sqrt(cov(2,2)), sqrt(cov(3,3)), sqrt(cov(4,4))]
