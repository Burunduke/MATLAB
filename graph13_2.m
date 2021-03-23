k = 2;
n = 2;
t = linspace(0,2*pi*(2*n-1),10000);
r = sin(k*t./(2*n - 1));
polarplot(r,t);