function Aralik=TumFarkliRakam(rkm)
n1=SayiUret(rkm,0);
n2=SayiUret(rkm,1);
Aralik=[];
for i=n1:n2
    sy=num2str(i)-48;
    ayn=0;
    j=0;
    while ayn==0 && j<rkm-1
        j=j+1;
        for k=j+1:rkm
            if sy(j)==sy(k)
                ayn=1;                
            end
        end
    end
    if ayn==0
        Aralik=[Aralik;sy];
    end
end