xl=0;
xu=1;
i=1;
e(i)=10;


while (e(i)> 0.001)
    
    xr=(xl+xu)/2;
   
    gxl= -2^xl+xl;
    gxu= -2^xu+xu;
    gxr= -2^xr+xr;
    
    
    if (gxl*gxr < 0)
    xu=xr;
    e(i+1)=abs(xr-xl);
end

if (gxu*gxr < 0)
    xl=xr;
    e(i+1)=abs(xu-xr);
end
i=i+1;

if (gxu*gxr == 0)
    xr=xr;
end
end
     
disp(e)
tamanio=size(e);
ite=1:1:tamanio(2);

plot(ite,e,'color',[1 0 0]);
grid on
hold on