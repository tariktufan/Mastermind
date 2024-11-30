function [DarAralik,hata]=Ara(Thmn,Aralik,hata)
DarAralik=[];
snc=1;
sA=size(Aralik,1);
sT=size(Thmn,1);
while snc
    hdf=sT-hata;
    for i=1:sA
        ds=0;
        for j=1:sT
            AE=ArtiEksi(Aralik(i,:),Thmn(j,1:end-2));
            AEr=Thmn(j,end-1:end);
            if AE(1)==AEr(1) && AE(2)==AEr(2)
                ds=ds+1;
            end
        end
        if ds>=hdf
            DarAralik=[DarAralik;Aralik(i,:)];
        end
    end
    if size(DarAralik,1)==0
        hata=hata+1;
    else
        snc=0;
    end
end
if hata>0
    fprintf('En az %g tane hatalı giriş var.\n',hata)
end
end