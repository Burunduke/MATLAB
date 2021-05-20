%Galileispirel
a = 3;
d = 0.25;
phi = linspace(0,2*pi,10000);
rho = a*phi.^2 - d;
x = rho.*cos(phi);
y1 = rho.*sin(phi);
y2 = -rho.*sin(phi);
plot(y1,-x);
hold on;
plot(y2,-x);
hold off;
%%
%lemniscateofbernouli
c = 10;
phi = linspace(0,2*pi,10000);
x = (c*sqrt(2)*cos(phi))./(1 + sin(phi).^2);
y = (c*sqrt(2)*cos(phi).*sin(phi))./(1 + sin(phi).^2);
plot(x,y);
%%
%PascalsSnail
r = 0.2;
h = 0.5;
phi = linspace(0,2*pi,10000);
x = 2*r*cos(phi) - h*cos(2*phi);
y = 2*r*sin(phi) - h*sin(2*phi);
plot(y,x);
