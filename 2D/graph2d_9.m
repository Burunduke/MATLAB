n = 2;
m = 3;
a = 3;
phi = linspace(0,2*m*pi, 10000);
b = n/m;
x = (1 + b)*cos(phi.*b) - a*b*cos(phi.*(1+b));
y = (1 + b)*sin(phi.*b) - a*b*sin(phi.*(1+b));
plot(x,y);
