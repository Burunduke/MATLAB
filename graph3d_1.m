a = 1;
b = 2;
c = 3;
d = 4;
F=@(x,y) (-(a*x+b*y+d)./c);
fsurf(F,[-pi,pi,-pi,pi]);
