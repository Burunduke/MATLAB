X = linspace(-3,3,100);
Y = linspace(-5,5,100);
[x,y] = meshgrid(X,Y);
z = exp(-x.^2-y.^2/2).*cos(4*x)+exp(-3*((x+0.5).^2 + y.^2/2));
%idx = (abs(z)>0.001);
%z(idx) = 0.001*sign(z(idx));
hold on
surf(x,y,z)
colormap(flipud(cool))
shading interp
view([1 -1.5 2])
hold off