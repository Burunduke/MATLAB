a = 5;
b = 3;
n = 7;
m = 9;
phi0 = pi/6;
phi = linspace(-4*pi,4*pi,10000);
x = a*sin(n*phi+phi0);
y = b*cos(m*phi);
plot(x,y);
