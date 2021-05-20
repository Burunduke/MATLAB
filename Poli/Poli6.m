clear;
clc;
chislitel = [1,0,0];
znamenatel = conv(conv([1,-1],[1,2]),[1,3]);
[r,s,k] = residue(chislitel, znamenatel);
r = r';
r = round(r*1e4)/1e4;
s = s';
s = round(s*1e4)/1e4;
%%
clear;
clc;
chislitel = [1,3];
znamenatel = conv([1,-1],[1 0 1]);
[r,s,k] = residue(chislitel, znamenatel);
r = r';
r = round(r*1e4)/1e4;
s = s';
s = round(s*1e4)/1e4;
%%
clear;
clc;
chislitel = [1,0,0];
znamenatel = [1,0,0,0,-1];
[r,s,k] = residue(chislitel, znamenatel);
r = r';
r = round(r*1e4)/1e4;
s = s';
s = round(s*1e4)/1e4;