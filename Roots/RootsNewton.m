clear;
clc;

syms x;
%P = 1+ x.*sin(x);
%P = sin(x)./x;
P = 1+(1+sin(x)-cos(x)).^2 - (sin(2*x)-cos(2*x)-0.2).^2;
a = -5;
b = 5;
h = 0.01;
iter = 300;
eps = 1.0e-7;
X = [a:h:-0.01 0.01:h:b];
ymin = min(double(subs(P,x,X)));
ymax = max(double(subs(P,x,X)));
figure
axis ([a,b,ymin,ymax]);
ax=axes;
set(ax,'xlim',[a b],'ylim',[ymin ymax]);
hold (ax)
plot(X,double(subs(P,x,X)));
hold on
plot(X,X.*0,':');
z = ginput(1);
if (b-z > z-a)
    x2 = z(1);
    x1 = a;
else
    x1 = z(1);
    x2 = b;
end
it = 0;
while (abs(double(subs(P,x,x2))) > eps && it<iter)
    it = it+1;
    axis equal;
    axis ([a,b,ymin,ymax]);
    x2 = x1 - double(subs(P,x,x1))/double(subs(diff(P),x,x1));
    f1 = plot(X,(double(subs(P,x,x1))+double(subs(diff(P),x,x1))*(X-x1)),':');
    f2 = plot(x2,0,'*',x1,double(subs(P,x,x1)),'*',x2,double(subs(P,x,x2)),'o');
    xline = [x2 x2];
    yline = [0 double(subs(P,x,x2))];
    f3 = line(xline,yline,'LineStyle',':');
    x1 = x2;
    if abs(double(subs(P,x,x2))) <= eps
        break
    end
    axis ([a,b,ymin,ymax]);
    axis equal;
    disp('Paused: Press any key');
    pause;
    delete (f1);
    delete (f2);
    delete (f3);
end
disp (double(subs(P,x,x2)));
disp(x2);