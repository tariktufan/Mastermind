function sy=SayiUret(r,n)
if r>9
    r=9;
end
if n>1
    n=1;
end
sy=0;
if n==1
    for i=1:r
        sy=(sy+(10-i))*10;
    end
    if i==r
        sy=sy/10;
    end
else
    sy=10^(r-1);
end

end
