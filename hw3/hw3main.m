%% Q1
load('hw3.mat')

beta0=zeros(6, 1);

options=optimset('MaxIter', 10000, 'TolFun', 1e-16, 'MaxFunEvals', 10000);
fnm= @(beta)negll(beta, X, y);
[betanm, fvalnm, exitflagnm, outputnm] = fminsearch(fnm, beta0, options)

%% Q2

[betaqn, fvalqn, exitflagqn, outputqn] = fminunc(@(beta) ...
    negll(beta, X, y), beta0)

%% Q3

fnls= @(beta)ssnls(beta, X, y);
options2= optimoptions(@lsqnonlin, 'MaxIter', 10000, 'TolFun', ...
    1e-16, 'MaxFunEvals', 10000);
[betanls, fvalnls] = lsqnonlin(@(beta) y-exp(X*beta), beta0, [],[], options2)

%% Q4

[betanlsnm, fvalnlsnm, outputnlsnm] = fminsearch(fnls, beta0, options)

%% Q5
%% Ones
%% NM
load('hw3.mat')

beta1=ones(6, 1);
tic
options=optimset('MaxIter', 10000, 'TolFun', 1e-16, 'MaxFunEvals', 10000);
fnm= @(beta)negll(beta, X, y);
betanm1 = fminsearch(fnm, beta1, options)
toc

%% QN

tic
betaqn1 = fminunc(@(beta) negll(beta, X, y), beta1)
toc

%% NLS
tic
fnls= @(beta)ssnls(beta, X, y);
options2= optimoptions(@lsqnonlin, 'MaxIter', 10000, 'TolFun', ...
    1e-16, 'MaxFunEvals', 10000);
betanls1 = lsqnonlin(@(beta) y-exp(X*beta), beta1, [],[], options2)
toc

%% NLS via NM
tic
betanlsnm1 = fminsearch(fnls, beta1, options)
toc

%% Twos
beta2=2*ones(6,1);

%% NM
tic
options=optimset('MaxIter', 10000, 'TolFun', 1e-16, 'MaxFunEvals', 10000);
fnm= @(beta)negll(beta, X, y);
betanm2 = fminsearch(fnm, beta2, options)
toc

%% QN

tic
betaqn2 = fminunc(@(beta) negll(beta, X, y), beta2)
toc

%% NLS
tic
fnls= @(beta)ssnls(beta, X, y);
options2= optimoptions(@lsqnonlin, 'MaxIter', 10000, 'TolFun', 1e-16, ...
    'MaxFunEvals', 10000);
betanls2 = lsqnonlin(@(beta) y-exp(X*beta), beta2, [],[], options2)
toc

%% NLS via NM
tic
betanlsnm2 = fminsearch(fnls, beta2, options)
toc

%% Minus Ones
beta_1=-1*ones(6,1);

%% NM
tic
options=optimset('MaxIter', 10000, 'TolFun', 1e-16, 'MaxFunEvals', 10000);
fnm= @(beta)negll(beta, X, y);
betanm_1 = fminsearch(fnm, beta_1, options)
toc

%% QN
tic
betaqn_1 = fminunc(@(beta) negll(beta, X, y), beta_1)
toc

%% NLS
tic
fnls= @(beta)ssnls(beta, X, y);
options2= optimoptions(@lsqnonlin, 'MaxIter', 10000, 'TolFun', ...
    1e-16, 'MaxFunEvals', 10000);
betanls_1 = lsqnonlin(@(beta) y-exp(X*beta), beta_1, [],[], options2)
toc

%% NLS via NM
tic
betanlsnm_1 = fminsearch(fnls, beta_1, options)
toc
