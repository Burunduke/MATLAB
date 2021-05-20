f =  @(x,y,z)(-x.^2*z.^3 - 9*y.^2*z.^3/80 + (x.^2+9*y.^2/4 + z.^2 -1).^3);
fimplicit3(f,[-3,3,-3,3,-3,3],'EdgeColor','none');
colormap(flipud(cool))