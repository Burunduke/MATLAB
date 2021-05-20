a = 2*pi;
[x,y] = meshgrid(-1:0.01:1,-1:0.01:1);
r = sqrt(x.^2+y.^2);
f = (2*besselj(1,a*r(:))./r(:)).^2;
surf(x,y,reshape(f,size(x)));
%hidden off;
shading flat;
shading interp;
set(gca,'Zscale','Log');