P = [1 -3.55 5.1 -3.1];
x = linspace(0,3,1000);
F = polyval(P,x);
plot(x,F);
hold on;
F1 = 0*x;
plot(x,F1);
hold off