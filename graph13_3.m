phi0 = 2.5;
phi = linspace(0,2*pi,10000);
x = sin(phi.*m).*cos(phi.*n + phi0);
y = cos(phi.*m).*sin(phi.*n + phi0);
plot(x,y);