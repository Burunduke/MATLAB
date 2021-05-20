function [] = graph3d_8(rx,ry,rz,a,b,k)

u = linspace(a,b,1000); %для кривой
plot3(rx(u),ry(u),rz(u));
for i= a:k:b
    syms t;
    drx = subs(diff(rx(t),t,1),i);
    ddrx = subs(diff(rx(t),t,2),i);
    dry = subs(diff(ry(t),t,1),i);
    ddry = subs(diff(ry(t),t,2),i);
    drz = subs(diff(rz(t),t,1),i);
    ddrz = subs(diff(rz(t),t,2),i);
    l1 = sqrt(drx.^2+dry.^2+drz.^2);
    line([subs(rx,i), subs(rx,i)+drx./l1],[subs(ry,i), subs(ry,i)+dry./l1],[subs(rz,i),subs(rz,i)+drz./l1]);
    x1 = dry * ddrz - drz * ddry;
    y1 = -(drx * ddrz - drz * ddrx);
    z1 = drx * ddry - dry * ddrx;
    l2 = sqrt(x1.^2+y1.^2+z1.^2);
    line([rx(i), rx(i)+x1./l2],[ry(i), ry(i)+y1./l2],[rz(i), rz(i)+z1./l2]);
    x2 = dry * z1 - drz * y1;
    y2 = -(drx * z1 - drz * x1);
    z2 = drx * y1 - dry * x1;
    l3 = sqrt(x2.^2+y2.^2+z2.^2);
    line([rx(i), rx(i)+x2./l3],[ry(i), ry(i)+y2./l3],[rz(i), rz(i)+z2./l3]);
end