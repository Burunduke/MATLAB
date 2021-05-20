P = [1,-6,15,-14];
r = roots(P);
R = [];
for i = 1:length(r)
    if (abs(imag(r(i))) < 1.0e-4)
        r(i) = real(r(i));
        R = [R r(i)];
    end
end
x = linspace(min(R)-1,max(R)+1,10000);
plot(x,polyval(P,x));
hold on
plot(R, polyval(P,R), 'o');
hold off
%%
P = [1,-2,-8,13,-24];
r = roots(P);
R = [];
for i = 1:length(r)
    if (abs(imag(r(i))) < 1.0e-4)
        r(i) = real(r(i));
        R = [R r(i)];
    end
end
x = linspace(min(R)-1,max(R)+1,10000);
plot(x,polyval(P,x));
hold on
plot(R, polyval(P,R), 'o');
hold off
%%
P = [1,3,1,1,4,1];
r = roots(P);
R = [];
for i = 1:length(r)
    if (abs(imag(r(i))) < 1.0e-4)
        r(i) = real(r(i));
        R = [R r(i)];
    end
end
x = linspace(min(R)-1,max(R)+1,10000);
plot(x,polyval(P,x));
hold on
plot(R, polyval(P,R), 'o');
hold off