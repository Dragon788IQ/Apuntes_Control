syms 
%Linealizacion con una variable
clc
claer all
syms x
f1 = log(x);
lf1 = taylor(f1,x,x0,"orde",2);

f2 = sin(x)
lf2 = taylor(f2,x,x0,"orden",2);
