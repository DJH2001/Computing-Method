syms y k x n x1 xk h;
x1=input('请输入x的值：');
n=input('请输入n的值：');
y=0.0;
f=1/(1+x^2);
h=10.0/n;
for k=0:n
    l=1.0;
    xk=-5.0+k*h;
    for j=0:k-1
        if k-1==-1
            break;
        end
        xj=-5.0+j*h;
        l=l*(x1-xj)/(xk-xj);
    end
    for j=k+1:n
        if k+1==n+1
            break;
        end
        xj=-5.0+j*h;
        l=l*(x1-xj)/(xk-xj);
    end
    yk=double(subs(f,'x',xk));
    y=y+l*yk;
end
fprintf('x=%.10f',x1);
fprintf('y=%.10f',y);

