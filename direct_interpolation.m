clc;
clear;
close all;

x=input('enter order of equation');
y=input('enter matrix as (x,y) : ');
z=input('value of x to be find');

disp(x);
disp(y);
disp(z);

[m,n]=size(y);
c=zeros(m,1);
a=sortrows(y,1);

for i=1:m
    c(i,1)=abs(a(i,1)-z);
end

disp(c);
d=[c,a];
e=sortrows(d,1);
q=zeros((x+1),1);
p=zeros((x+1),(x+1));
p(:,(x+1))=1;

disp(d);
disp(e);
disp(p);

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

disp(p);
disp(q);
disp(g);

l=x;
t=z;
b=0;
for i=1:(x+1)
 
    b=b+(g(i)*(t^l));
    l=l-1;
end

disp(b);