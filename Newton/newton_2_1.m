disp('问题2（1）');
syms x;
f(x)=x-exp(-x);
newton(f,0.5,1e-6,1e-10,10);