a = 1/2;
b = 1/3;
m = 7;
n = 17;
t = linspace(-5,5,10000);
x = cos(t) + a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
plot(x,y);