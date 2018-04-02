clc;
clear all;

a=input('input matrix');
b=input('input rhs');
a
b
c=[a b];
[m,n]=size(c);
c

x=zeros(m,1);
v=zeros(m,1);
l=zeros(m,1);

g=0;
error=100;

while error>=0.000001

  v=x;  
    for i=1:m
    g=0;
       for k=1:n-1
            if(i~=k)
            g=g+c(i,k)*x(k);
            end
        end
        x(i)=((c(i,n)-g)/a(i,i));    
    end
 l=(x-v)./x;
 error=max(l);
end
