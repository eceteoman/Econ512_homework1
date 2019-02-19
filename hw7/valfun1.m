
function val=valfun1(p1)

global v0 p2 w1 w2 beta;

val=d1(p1,p2(w1,w2))*(p1-c(w1)) + beta*trans1(w1, w2, p1)*v0*(trans1(w1, w2, p1))';


val = -val;
end