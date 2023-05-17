function a=newton(f,x0,e1,e2,N)
syms x F DF Tol x1;
n=1;
while n <= N
    F=subs(f,'x',x0);
    DF=subs(diff(f),'x',x0);
    if abs(F)<e1
        fprintf('x*=%.10f',x0);
        disp(' ');
        fprintf('迭代次数n= %d',n);
        return;
   elseif abs(DF)<e2
            fprintf('输出失败');
            return;
    end
    x1=double(x0-F/DF);
    Tol=abs(x1-x0);
    if Tol<e1
        fprintf('x*=%.10f',x1);
        disp(' ');
        fprintf('迭代次数n= %d',n);
        return;
    end
    n=n+1;
    x0=x1;
end
fprintf('输出失败');
return


