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
d
e
l=ones((x+1),1);

for i=1:(x+1)
    for j=1:(x+1)
        if(i~=j)
            l(i)=l(i)*((z-(e(j,2)))/(e(i,2)-e(j,2)));
        end
    end
end
b=0;
l
for i=1:(x+1)
    b=b+(l(i)*e(i,3));
end
b