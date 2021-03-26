[x,y] = meshgrid(-pi:.05:pi);
z = -x.*sin(x) - y.*cos(y);
mesh(x,y,z);