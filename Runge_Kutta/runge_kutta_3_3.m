disp('问题3（3）');
syms x y;
f(x)=-20*(y-exp(x)*sin(x))+exp(x)*(sin(x)+cos(x));
runge_kutta(f,0,0,1);