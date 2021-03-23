x = [linspace(-10,0,10000),linspace(0,1,1000),linspace(1,2,1000),linspace(2,10,8000)];
y = 1./x - 1./(x - 1) + 1./(x - 2);
plot(x,y);
