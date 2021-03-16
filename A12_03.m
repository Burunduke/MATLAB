A = rand(10);
writematrix(A,'test.xls');
B = readmatrix('test.xls');
%%
x = 0:.03:1;
y = x.*(1-x)+0.1;
%x1 = -0.5:.05:0.5;
%y1 = (x1+0.5)/2;
plot(x,y,'Linewidth',2,'Color','g');
xlabel('Время');
ylabel('Перемещение');
title('График');