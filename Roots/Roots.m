hold on;
f = @(x)sin(exp(x));
a = -3:0.01:3;
plot(a,f(a),a,0*a,'b:');
x = ginput(1);
[x1,y1] = fzero(f,x(1));
plot(x1,y1,'ro');
%%
hold on;
axis([-2*pi 6*pi -10 10]);
f = @(x)5*(exp(-0.1*x)).*sin(x)-0.1*x;
a = linspace(-2*pi,6*pi,1000);
plot(a,f(a),a,0*a,'b:');
x = ginput(1);
[x1,y1] = fzero(f,x(1));
plot(x1,y1,'ro');
%%
syms x
fzero('x^2+1',0)
solve(x^2+1,x)
%%
hold on;
f = @(x)cos(x)-exp(0.001+x.^2);
a = linspace(-2,2,1000);
plot(a,f(a));
a = ginput(1);
[x1,y1,err] = fzero(f,a(1)); %err -3 корней нету
syms x;
solve(cos(x)-exp(0.001+x.^2),x); %не работает, тк нету корней
