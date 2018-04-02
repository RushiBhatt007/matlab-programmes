clc;
clear all;

x=input('enter order of equation');
y=input('enter matrix as (x,y) : ');
z=input('value of x to be find');
x
y
z

[m n]=size(y);
c=zeros(m,1);
a=sortrows(y,1);

for i=1:m
    c(i,1)=abs(a(i,1)-z);
end
c
d=[c a];
e=sortrows(d,1);
q=zeros((x+1),1);
p=zeros((x+1),(x+1));
p(:,(x+1))=1;
d
e
p

for i=1:(x+1)
    l=x;
    for j=1:x
        p(i,j)=(e(i,2))^l;
        l=l-1;
    end
end
for i=1:(x+1)
    q(i)=e(i,3);
end
f=inv(p);
g=f*q;
p
q
g

l=x;
t=z;
b=0;
for i=1:(x+1)
 
    b=b+(g(i)*(t^l));
    l=l-1;
end

b
    
    







