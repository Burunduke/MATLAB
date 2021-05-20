%% task 1
A = rand(4,3);
B = rand(3,4);
a = A(1:3,1:3);
b = B(1:3,1:3);
c = det(a*b);
%% task2
n = randi(10);
a = rand(n,1);
b = rand(1,n);
a*b;
b*a;
c = det(a*b);
%% task3
A = rand(5,3);
B = rand(2,3);
O = zeros(5,2);
E = eye(2);
C = [A O;B E];
t = C(:,5);
%% task 4
A = rand(6,3);
a = A(1:3,1:3);
x = det(a);
if x~=0
    a = a';
    b = A(4:6,1:3);
    A = [a;b];
    a*(a^-1);
end
%% task 5
A = rand(3,5);
a = A(:,1:3);
if det(a) ~=0
    a(1,:) = 0;
    det (a);
end
%% task 6
A = rand(20);
a = eig(A);
b = sort(a);
%% task 7
A = rand(4);
[V,D] = eig(A);
A*V - V*D;
%% task 8
n = randi(30);
D = eye(n).* -2;
D(1,n) = 1;
D(n,1) = 1;
D = D + diag(ones(1,n-1),1) + diag(ones(1,n-1),-1);
%% task 9
A = rand(8);
r = [];
c = [];
for i = 1:8
    r = [r max(A(:,i))];
    c = [c max(A(i,:))];
    for j = 1:8
        if (A(i,j) > 0.2)
            X = [i,' and ',j];
            disp(X);
        end
    end
end
max(A);