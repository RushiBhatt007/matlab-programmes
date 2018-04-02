%linear regression
clc;
clear all;
y=input('enter matrix as (x,y) : ');
z=input('enter order : ');
long y

[m n]=size(y);
c=zeros((2*z),1);
w=zeros(z,1);


for i=1:(2*z)
    b=0;
    for j=1:m       
        b=b+((y(j,1))^(i));        
    end
    c(i,1)=b;
end
c
b=0;
for i=0:z
    b=0;
    for j=1:m
        b=b+(y(j,2)*(y(j,1)^i));
    end
    w(i+1,1)=b;   
end  
w
f=zeros(z+1,z+1);
f(1,1)=m;
k=1;
r=1;
f
for i=1:(z+1)
    for q=1:(z+1)
        if i==1 &q==1
        else
        f(i,q)=c(r,1);
        r=r+1;
        end
    end
    k=k+1;
    r=r-1;
end
f(1,1)=m;
f
l=zeros(z+1,0);
a=inv(f);
l=a*w;
l

        
        
        
        
        
        
        


