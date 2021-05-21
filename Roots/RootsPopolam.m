clear;
clc;
syms x;
P = 1+ x.*sin(x);
%P = sin(x)./x;
%P = 1+(1+sin(x)-cos(x)).^2 - (sin(2*x)-cos(2*x)-0.2).^2;
a = -5;
b = 5;
h = 0.01;
iter = 30;
it = 0;
eps = 1.0e-7;
X = [a:h:-0.01 0.01:h:b];
x3 = @(x1,x2)((x1+x2)/2);
ymin = min(double(subs(P,x,X)));
ymax = max(double(subs(P,x,X)));
figure
axis ([a,b,ymin,ymax]);
plot(X,double(subs(P,x,X)));
hold on
plot(X,X.*0,':');
[z,y] = ginput(2);
if (z(1) < z(2))
    x1 = z(1);
    x2 = z(2);
else
    x1 = z(2);
    x2 = z(1);
end
f = plot(x1,double(subs(P,x,x1)),'o',x2,double(subs(P,x,x2)),'o');
if (double(subs(P,x,x1))*double(subs(P,x,x2)) <= 0 || double(subs(P,x,x1))*double(subs(P,x,x3(x1,x2))) <=0 || double(subs(P,x,x2))*double(subs(P,x,x3(x1,x2))) <=0)
    while(abs(double(subs(P,x,x3(x1,x2)))) >= 1.0e-5)
        delete (f);
        f = plot(x1,double(subs(P,x,x1)),'o',x2,double(subs(P,x,x2)),'o');
        if(double(subs(P,x,x1))*double(subs(P,x,x3(x1,x2))) <=0 && it<iter)
            x2 = x3(x1,x2);
        else
            x1 = x3(x1,x2);
        end
        it = it+1;
        disp('Paused: Press any key');
        pause;
        
    end
else
    disp('Wrong points');
end
disp(abs(double(subs(P,x,x3(x1,x2)))));
disp(x2);
hold off