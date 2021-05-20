clear, clc
x = linspace(-10,10,1000)'; % 
v = linspace(-pi,pi,1000); % вращение
y1 = 4 - x;
X1 = x*sin(v);
Y1 = y1*ones(size(v));
Z1 = x*cos(v);
surf(X1,Y1,Z1,'FaceAlpha',0.5);
shading flat
xlabel('X')
ylabel('Y')
zlabel('Z')
%%
clear, clc
u = [0,1,2]';
t = linspace(0,5,50);
r1x= sin(t);
r1y= 5*cos(t);
r1z= t;
r2x= 2*t;
r2y= 0.4*t;
r2z= 5+2*t;
ux= sin(t)+0.1*u.*t;%r1x + u*r2x
uy= 5*cos(t)+0.4*u.*t;
uz= t+2*u.*t;
plot3(r1x,r1y,r1z,ux,uy,uz);