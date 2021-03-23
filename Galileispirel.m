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