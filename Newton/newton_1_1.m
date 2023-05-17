disp('问题1（1）');
syms x;
f(x)=cos(x)-x;
newton(f,pi/4,1e-6,1e-10,10);