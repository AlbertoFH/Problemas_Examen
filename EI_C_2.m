syms x
f=('-sen (x+1) + cos (x+1)')
f=inline(f);
derivada=diff(f,x);
df=inline(derivada);
i=1;
e(i) = 50;
x=2;
n =0;

while (e(i) > 0.0001)

n=n+1;
x=x-f(x)/df(x);
e(i)= abs(f(x));

end
disp(e)
tamanio=size(e);
ite= 1:1:tamanio(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white');
plot(ite,e,'color',[1 0 0])
grid on