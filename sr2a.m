[x,y] = meshgrid(-pi:.5:pi);
a = 3;
z = a*sin(sqrt(x.^2+y.^2))./(x.^2+y.^2);
mesh(x,y,z);