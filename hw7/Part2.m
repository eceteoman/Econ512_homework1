% For part 2





for i=1:30   
    if  i=w1
        Trans1(i;:)=trans1(w1, w2, p1(w1, w2));
    else
        Trans1(i;:)=zeros(1,30);
    end
end

    
for j=1:30   
    if  j=w2
        Trans2(j;:)=trans2(w1, w2, p2(w1, w2));
    else
        Trans2(j;:)=zeros(1,30);
    end  
end


    Trans=kron(Trans1, Trans2);
    
    
    
    