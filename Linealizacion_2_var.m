%Segunda linealizacion
syms x s
syms mumax xs ks D s0 x0 sl0 yxs

f1 = ((mumax*x*s)/(ks+s))+x*D;
lf1 = taylor(f1,[x s], [x0 sl0], "order", 2)

f2 =  ((mumax*x*s)/((ks+s)*yxs));
lf2 = taylor(f2, [x s], [x0 s10], "order", 2)

F = [f1; f2];
jF = jacobian(F,[x s]);

jF2 = subs(jF, [x s], [x0 sl0]);
