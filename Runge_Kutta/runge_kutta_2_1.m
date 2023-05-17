disp('问题2（1）');
syms x y;
f(x)=2*y/x+x*x*exp(x);
runge_kutta(f,1,0,3);