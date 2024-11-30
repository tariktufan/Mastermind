function AE=ArtiEksi(sy1,sy2)
AE=[0,0];
for i=1:length(sy1)
    for j=1:length(sy2)
        if sy1(i)==sy2(j)
            if i~=j
                AE(2)=AE(2)+1;
            else
                AE(1)=AE(1)+1;
            end
        end
    end
end
end