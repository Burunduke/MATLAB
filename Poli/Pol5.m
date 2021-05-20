clear;
clc;
n = 17;
P = zeros(1,2*n+1);
P(2*n+1) = -1;
P(n + 2) = n;
P(n) = -n;
P(1) = 1;
X = roots(P);
X = round(X*1e4)/1e4;
X = sort(X);
krat = [];
prost = unique(X);
krat = [];
prost = [];
for i = 1:length(X)
    if length(find(X==X(i)))>1
        krat = [krat X(i)]; 
    else 
        prost = [prost X(i)]; 
    end
end
krat = unique(krat);
x = linspace(min(X),max(X), 10000);
plot(x,polyval(P,x));