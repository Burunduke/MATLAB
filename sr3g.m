a = 7;
b = 3;
Fx = @(u,v)(a+b*cos(v)).*cos(u);
Fy = @(u,v)(a+b*cos(v)).*sin(u);
Fz = @(u,v)(b*sin(v));
fsurf(Fx,Fy,Fz,[0,2*pi,-4*pi,-2*pi]);
axis equal;