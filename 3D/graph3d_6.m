clear,clc
c = 2; d = 3;
x = linspace(-2*pi,2*pi,50);
y = x;
[X,Y] = meshgrid(x,y);
x = c*cosh(X).*cos(Y);
y = c*cosh(X).*sin(Y);
z = d*sinh(X);
surf(x,y,z,'EdgeColor','none');
hold on;
axis equal;
axis([-250 250 -250 250 -250 250]);
colormap(spring);
for t = linspace(0,2*pi,14)
lx = cos(t);
ly = sin(t);
l = (1 - ly)/lx;
x = [lx];y=[ly];z=[0];
while sqrt(x(1)^2+y(1)^2+z(1)^2)<400
x = [x(1)+l^2-1,x];
y = [y(1)+2*l,y];
z = [z(1)+1+l^2,z];
end
plot3(c*x,c*y,d*z,'b');
x = [lx];y=[ly];z=[0];
while sqrt(x(1)^2+y(1)^2+z(1)^2)<400
x = [x(1)-l^2+1,x];
y = [y(1)-2*l,y];
z = [z(1)-1-l^2,z];
end
plot3(c*x,c*y,d*z,'b');
x = [lx];y=[ly];z=[0];
while sqrt(x(1)^2+y(1)^2+z(1)^2)<400
x = [x(1)-l^2+1,x];
y = [y(1)-2*l,y];
z = [z(1)+1+l^2,z];
end
plot3(c*x,c*y,d*z,'g');
x = [lx];y=[ly];z=[0];
while sqrt(x(1)^2+y(1)^2+z(1)^2)<400
x = [x(1)+l^2-1,x];
y = [y(1)+2*l,y];
z = [z(1)-1-l^2,z];
end
plot3(c*x,c*y,d*z,'g');
end
%%
clear,clc
x = linspace(-6*pi,6*pi,100);
y = x;
[X,Y] = meshgrid(x,y);
x = X*sqrt(2);
y = Y*sqrt(2);
z = X.^2-Y.^2;
surf(x,y,z,'EdgeColor','none');
hold on;
colormap(spring);
axis([-20 20 -20 20 -200 200]);
for t = linspace(0,100,100)
x = [0];y = [t];z = [t*t/-2];
while sqrt(x(1)^2+y(1)^2+z(1)^2)<200
x = [x(1)+1,x];
y = [y(1)-1,y];
z = [z(1)+t,z];
end
plot3(x,y,z,'b',x,-y,z,'b');
x = [0];y = [t];z = [t*t/-2];
while sqrt(x(1)^2+y(1)^2+z(1)^2)<200
x = [x(1)-1,x];
y = [y(1)+1,y];
z = [z(1)-t,z];
end
plot3(x,y,z,'b',x,-y,z,'b');
x = [0];y = [t];z = [t.^2/-2];
while sqrt(x(1)^2+y(1)^2+z(1)^2)<200
x = [x(1)+1,x];
y = [y(1)+1,y];
z = [z(1)-t,z];
end
plot3(x,y,z,'g',x,-y,z,'g');
x = [0];y = [t];z = [t*t/-2];
while sqrt(x(1)^2+y(1)^2+z(1)^2)<200
x = [x(1)-1,x];
y = [y(1)-1,y];
z = [z(1)+t,z];
end
plot3(x,y,z,'g',x,-y,z,'g');

end