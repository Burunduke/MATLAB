x = linspace(0,100,10000);
y = (x+abs(x)).*sqrt(x.*(sin(pi*x)).^2);
plot(x,y);