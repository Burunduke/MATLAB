clear;
clc;
X = ones(1,100);
x = poly(X);
r = roots(x);
R = [];
for i = 1:length(r)
    if (abs(imag(r(i))) < 1.0e-4)
        r(i) = real(r(i));
        R = [R r(i)];
    end
end
X = linspace(min(R)-0.2,max(R)+0.2,1000);
plot(X,polyval(x,X));
hold on
plot(R,polyval(x,R),'o');
hold off
%в итоге всего 4 некомплексных корня(и 1 не с ними), функцию конечно
%жмыхнуло...