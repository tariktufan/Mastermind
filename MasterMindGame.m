rkm=4;arti=0;
Aralik=TumFarkliRakam(rkm); %Rakamlari farkli basamakli sayilar %ENG:Numbers with unique digits
DarAralik=Aralik; %Kullanıcı cevabına göre daraltılmış aralık %ENG:Narrowed range based on user response
hata=0; %kullanici hatasiz girmis kabulu ile başlar %ENG: assuming the user has entered without errors.
Thmn=[]; % Tahmin edilen sayi ve + - değerlerini barındırır; %ENG:Contains predicted numbers and + - values
while arti<rkm
    ThmnY=DarAralik(randi(size(DarAralik,1)),:); % Tahmini belirler %ENG: estimating the number
    TahminYazdir(ThmnY); % Tahmini Ekrana yazdırır %ENG:fprintfs the estimate
    DD=1;
    while DD 
        arti=input('+:');   % Kullanıcı artı değerini girer %ENG:positives
        eksi=input('-:');   % Kullanıcı eksi değerini girer %ENG:negatives
        if arti+eksi<=rkm
            DD=0;
        else
            fprintf('Total cannot be greater than %g\n',rkm)
        end
    end
    if arti<rkm && size(DarAralik,1)==1
        hata=hata+1;
    end
    Thmn=[Thmn;ThmnY,arti,eksi]; % Kaydedilir. %Save the estimate and its score
    [DarAralik,hata]=Ara(Thmn,Aralik,hata); %Kriter ve hataya uygun Aralik Bulunur. %Redefines the according numbers
end
