function  trans1=trans1(w1, w2, ppp1)

global p2;

probs1=zeros(1,30);


        if w1>1 && w1<30
            probs1(1,w1)=d1(ppp1,p2(w1,w2))*(delta(w1))+(1-d1(ppp1,p2(w1,w2)))*(1-delta(w1));
            probs1(1,w1+1)=d1(ppp1,p2(w1,w2))*(1-delta(w1));
            probs1(1,w1-1)=(1-d1(ppp1,p2(w1,w2)))*(delta(w1));       
        elseif w1==1 && w1<30
            probs1(1,w1+1)=d1(ppp1,p2(w1,w2))*(1-delta(w1));    
            probs1(1,w1)=1-d1(ppp1,p2(w1,w2))*(1-delta(w1));
        elseif w1>1 && w1==30           
            probs1(1,w1-1)=(1-d1(ppp1,p2(w1,w2)))*(delta(w1));    
            probs1(1,w1)=1-(1-d1(ppp1,p2(w1,w2)))*(delta(w1));
        end
    

trans1=probs1;
end
    
