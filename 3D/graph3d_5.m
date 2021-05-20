t = linspace(0,4*pi,10000);
z = 0.5*t;
x1 = sin(z);
x2 = sin(z+pi);
X = [x1 x2];
y1 = cos(z);
y2 = cos(z+pi);
plot3(x1,y1,z,x2,y2,z);
for i = linspace(0,4*pi,20)
   x = [sin(0.5*i),sin(0.5*i+pi)];
   y = [cos(0.5*i),cos(0.5*i+pi)];
   line(x,y,[0.5*i,0.5*i]);
end
axis equal;
