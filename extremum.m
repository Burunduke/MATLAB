%%
clear,clc
hold on;
a1 = 1; b1 = 2;
f = @(x)1./(a1*cos(x)+b1*sin(x)).^2;
a = 0; b = 2*pi/3;
t = linspace(a,b,1000);
plot(t,f(t));
xr = ginput(2);
[x1,x2] = fminbnd(f,xr(1),xr(2));
plot(xr(1),xr(3),'ko',xr(2),xr(4),'ko',x1,x2,'rx');
%%
clear,clc
hold on;
t = linspace(0,1,1000);
for a=1:5
    f = @(x)x.^a.*log(x);
    [x1,x2] = fminbnd(f,0,1);
    plot(t,f(t),x1,x2,'kx');
end
%%
clear,clc
hold on;
t = linspace(-1,1,1000);
for a=1:3
    for b=1:3
        f = @(x)x.^a.*exp(-b*x);
        [x1,x2] = fminbnd(f,-1,1);
        plot(t,f(t),x1,x2,'kx');
    end
end
%%
clear,clc
hold on;
t = linspace(-1,1,1000);
for a=1:3
    for b=1:3
        f = @(x)x.^a.*(1-x).^b;
        [x1,x2] = fminbnd(f,-1,1);
        plot(t,f(t),x1,x2,'kx');
    end
end