c = 10;
phi = linspace(0,2*pi,10000);
x = (c*sqrt(2)*cos(phi))./(1 + sin(phi).^2);
y = (c*sqrt(2)*cos(phi).*sin(phi))./(1 + sin(phi).^2);
plot(x,y);