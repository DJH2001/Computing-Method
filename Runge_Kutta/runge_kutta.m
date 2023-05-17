function a=runge_kutta(f,x0,y0,b)
N=input('请输入N的值：');
syms x y;
h=(b-x0)/N;
for n=1:N
    F1=subs(f,'x',x0);
    F2=subs(F1,'y',y0);
    K1=double(h*F2);
    F3=subs(f,'x',x0+h/2);
    F4=subs(F3,'y',y0+K1/2);
    K2=double(h*F4);
    F5=subs(f,'x',x0+h/2);
    F6=subs(F5,'y',y0+K2/2);
    K3=double(h*F6);
    F7=subs(f,'x',x0+h);
    F8=subs(F7,'y',y0+K3);
    K4=double(h*F8);
    x1=x0+h;
    y1=double(y0+(K1+2*K2+2*K3+K4)/6);
    fprintf('x1=%.10f',x1);
    fprintf('y1=%.10f\n',y1);
    x0=x1;
    y0=y1;
end