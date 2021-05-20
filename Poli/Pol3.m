clear,clc
Poli1 = [2,-3,4,-5,6];
Poli2 = [1, -3, 1];
Poli3 = [1,-3,-1,-1];
Poli4 = [3,-2,1];
[q1,r1] = deconv(Poli1,Poli2);
[q2,r2] = deconv(Poli3,Poli4);
