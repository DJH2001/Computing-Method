disp('问题1（2）');
syms x;
f(x)=exp(-x)-sin(x);
newton(f,0.6,1e-6,1e-10,10);