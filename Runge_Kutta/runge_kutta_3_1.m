disp('问题3（1）');
syms x y;
f(x)=-20*(y-x^2)+2*x;
runge_kutta(f,0,1/3,1);