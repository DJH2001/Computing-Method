disp('问题2（2）');
syms x;
f(x)=x^2-2*x*exp(-x)+exp(-2*x);
newton(f,0.5,1e-6,1e-10,20);