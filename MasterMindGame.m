rkm=4;arti=0;
Aralik=TumFarkliRakam(rkm); %Rakamlari farkli basamakli sayilar
DarAralik=Aralik; %Kullanıcı cevabına göre daraltılmış aralık
hata=0; %kullanici hatasiz girmis kabulu ile başlar
Thmn=[]; % Tahmin edilen sayi ve + - değerlerini barındırır;
while arti<rkm
    ThmnY=DarAralik(randi(size(DarAralik,1)),:); % Tahmini belirler
    TahminYazdir(ThmnY); % Tahmini Ekrana yazdırır
    arti=input('+:');   % Kullanıcı artı değerini girer
    eksi=input('-:');   % Kullanıcı eksi değerini girer
    if arti<4 && size(DarAralik,1)==1
        hata=hata+1;
    end
    Thmn=[Thmn;ThmnY,arti,eksi]; % Kaydedilir.
    [DarAralik,hata]=Ara(Thmn,Aralik,hata); %Kriter ve hataya uygun Aralik Bulunur.
end
