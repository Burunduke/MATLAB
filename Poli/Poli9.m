clear;
clc;
n = 5;
a = rand(n);
A = eig(a);
P = poly(A);
r = roots(P);
R = [];
for i = 1:length(r)
    if (abs(imag(r(i))) < 1.0e-4)
        r(i) = real(r(i));
        R = [R r(i)];
    end
end
x = linspace(-10,10,100000);
plot(x,polyval(P,x));
hold on
plot(R,polyval(P,R),'o');
hold off
Pa = polyval(P,a); %% не является
