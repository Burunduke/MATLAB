clear;
clc;
n = 30;
x = 1:0.1:n;
y = 1./x;
P = polyfit(x,y,n-1);
Y = polyval(P,x);
hold on
plot(x,y);
plot(x,Y);
hold off
%plot(x,Y-y);
%%
clear;
clc;
x = [-1 0 1 2 3];
y = [6,5,0,3,2];
P = polyfit(x,y,4);
Y = polyval(P,x);
plot(x,y);
hold on
plot(x,Y);
hold off;
%plot(x,Y-y);