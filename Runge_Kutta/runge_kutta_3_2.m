disp('问题3（2）');
syms x y;
f(x)=-20*y+20*sin(x)+cos(x);
runge_kutta(f,0,1,1);