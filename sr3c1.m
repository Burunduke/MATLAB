p = 5;
Fx=@(u,v)u.*cos(v);
Fy=@(u,v)u.*sin(v);
Fz=@(u,v)(u.^2)/p;
fsurf(Fx,Fy,Fz,[0,5,-pi,pi]);