function val=valfun(x)

 global v0 y0 p0 delta i j gridp gridy prob

if x<0
    r=-999999999999999999;
else
    r=p0*x - 0.2*(x^1.5);
end

 upty=y0-x;
  for qq=1:21
        vqq=v0(:,qq)
        apprv(qq)=interp1(gridy', vqq, upty, 'linear')
        vqq=zeros(101,1);
  end

val=r+(delta*prob(j,:)*apprv')