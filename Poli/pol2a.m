clear;
clc;
X = linspace(-2,2,1000);
syms x;
Pol = x^5 + 0.1*x^4 + 0.2*x^3 - 0.2*x^2 - 2*x + 1;
P = sym2poly(Pol);
m = max(P);
Roots = roots(P)';
for i = 1:5
    if abs(Roots(i)) < m
        disp(Roots(i));
    end
end
x1 = m/2;
y1 = polyval(P,x1);
x2 = -m/2;
y2 = polyval(P,x2);
fpr = diff(Pol);
fpr1 = sym2poly(fpr);
fkas1 = polyval(fpr1,x1)*(x-x1)+y1;
fkas = sym2poly(fkas1);
fkas2 = polyval(fpr1,x2)*(x-x2)+y2;
fkasz = sym2poly(fkas2);
fnorm1 = -(1/polyval(fpr1,x2))*(x-x2)+y2; 
fnorm = sym2poly(fnorm1);
xnorm = sqrt((fnorm(1)^2)/(1-fnorm(1)^2));
figure(1);
hold on
axis equal;
axis([-2 2 -1 3]);
plot(X,polyval(fkas,X),'--');
plot(X,polyval(fkasz,X),'--');
plot([x2-xnorm x2+xnorm],polyval(fnorm,[x2-xnorm x2+xnorm]),'-.');
plot(x1,y1,'o');
plot(x2,y2,'o');
F = polyval(P,X);
plot(X,F,'LineWidth',1.5);
hold off
%% Как построитб окружность, если там 3 точки на прямой (im = 0)
figure(2);
for i = linspace(0,1,1000000)
    if abs((sqrt((real(Roots(2))-i).^2 + imag(Roots(2)).^2) - sqrt((real(Roots(3))-i).^2 + imag(Roots(3)).^2))) < 10^(-6)
        %disp((sqrt((real(Roots(1))-i).^2 + imag(Roots(1)).^2) - sqrt((real(Roots(3))-i).^2 + imag(Roots(3)).^2)));
        t = i;
    end
end
al = linspace(-pi,pi,1000);
U = t+ cos(al).*sqrt((real(Roots(1))-i).^2 + imag(Roots(1)).^2);
V = sin(al).*sqrt((real(Roots(1))-i).^2 + imag(Roots(1)).^2);
plot(U,V);
axis equal
