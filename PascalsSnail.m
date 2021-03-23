r = 0.2;
h = 0.5;
phi = linspace(0,2*pi,10000);
x = 2*r*cos(phi) - h*cos(2*phi);
y = 2*r*sin(phi) - h*sin(2*phi);
plot(y,x);
