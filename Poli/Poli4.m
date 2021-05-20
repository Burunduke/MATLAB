clear, clc
Pol = [1,-2,6,-10,16];
x0 = 4;
x = Pol;
Der = polyder(Pol);
y = Der;
for i = 2:length(Pol)
   x(i) = x(i-1)*x0 + Pol(i); 
end

for j = 2:length(Der)
   y(j) = y(j-1)*x0 + Der(j); 
end
X = [x(i), polyval(Pol,x0), y(j), polyval(Der,x0)];
disp(X);
%%
clear, clc
Pol = [1,1+2i,0,-(1+3i),7];
x0 = -2-i;
x = Pol;
Der = polyder(Pol);
y = Der;
for i = 2:length(Pol)
   x(i) = x(i-1)*x0 + Pol(i); 
end

for j = 2:length(Der)
   y(j) = y(j-1)*x0 + Der(j); 
end
X = [x(i), polyval(Pol,x0), y(j), polyval(Der,x0)];
disp(X);