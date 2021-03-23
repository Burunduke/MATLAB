A = linspace(-10,-2,10000);
B = linspace(2,10,10000);
x = [A,B];
y = log((x.^2) - 4);
plot (x , y , "Linewidth", 2);
