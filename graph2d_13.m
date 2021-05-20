x = [linspace(-10,0,10000),linspace(0,1,1000),linspace(1,2,1000),linspace(2,10,8000)];
y = 1./x - 1./(x - 1) + 1./(x - 2);
plot(x,y);
%%
k = 2;
n = 2;
t = linspace(0,2*pi*(2*n-1),10000);
r = sin(k*t./(2*n - 1));
polarplot(r,t);
%%
phi0 = 2.5;
phi = linspace(0,2*pi,10000);
x = sin(phi.*m).*cos(phi.*n + phi0);
y = cos(phi.*m).*sin(phi.*n + phi0);
plot(x,y);