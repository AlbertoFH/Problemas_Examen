xl=1;
xu=2;
i=1;
e(i)=10;


while (e(i)> 0.001)
    
    xr=(xl+xu)/2;
   
    gxl= xl^3+4*xl^2+10;
    gxu= xu^3+4*xu^2+10;
    gxr= xr^3+4*xr^2+10;
    
    
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