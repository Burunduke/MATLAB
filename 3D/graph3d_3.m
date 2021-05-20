% C
r = linspace(0,5,100);
p = pi;
b = linspace(-pi,pi,100);
x = r.*cos(b);
y = r.*sin(b);
[X,Y] = meshgrid(x,y);
Z = sin(Y).*0 + cos(X).*0 + r.^2;
surf(X,Y,Z);
xlabel('x');
ylabel('y');
%%
% C'
p = 5;
Fx=@(u,v)u.*cos(v);
Fy=@(u,v)u.*sin(v);
Fz=@(u,v)(u.^2)/p;
fsurf(Fx,Fy,Fz,[0,5,-pi,pi]);
%%
% G
a = 7;
b = 3;
Fx = @(u,v)(a+b*cos(v)).*cos(u);
Fy = @(u,v)(a+b*cos(v)).*sin(u);
Fz = @(u,v)(b*sin(v));
fsurf(Fx,Fy,Fz,[0,2*pi,-4*pi,-2*pi]);
axis equal;