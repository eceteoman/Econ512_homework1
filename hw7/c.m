function  c=c(w)

global v0 beta grid delta kappa;

 
        if w<15
            c=kappa*(w^(log(0.85)/log(2)));
        else
            c=kappa*(15^(log(0.85)/log(2)));
            
        end
        
end
