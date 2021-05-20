a = 100;
b = 2;
n = 4;
k = 14;
m = 10;
rho = linspace(-pi/2,3*pi/2,10000);
phi = a*(b-sin(k*rho)-cos(m*rho))./(a+(rho - pi/2).^n);
polar(phi,rho);