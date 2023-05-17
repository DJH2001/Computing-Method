A=input('输入系数矩阵A：');
b=input('输入b向量(行向量)：');
n=length(b);
x=zeros(1,n);
c=zeros(1,n);
d=0;
for k=1:n-1
    max=abs(A(k,k));
    p=k;
    for j=k+1:n
        if max<abs(A(j,k))
            max=abs(A(j,k));
            p=j;
        end
    end
    if max == 0
        disp('输出失败');
        return;
    end
    if(p~=k)
        for j=k:n
            c(j)=A(k,j);
            A(k,j)=A(p,j);
            A(p,j)=c(j);
        end
        d=b(k);
        b(k)=b(p);
        b(p)=d;
    end
    for i=k+1:n
        m=A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j)=A(i,j)-A(k,j)*m;
        end
        b(i)=b(i)-b(k)*m;
        A(i,k)=0;
    end
end
if A(n,n) == 0
    disp('输出失败');
    return;
end
x(n)=b(n)/A(n,n);
for k=n-1:-1:1
    sum=0;
    for j=k+1:n
        sum=sum+A(k,j)*x(j);
    end
    x(k)=(b(k)-sum)/A(k,k);
end
disp(x);
