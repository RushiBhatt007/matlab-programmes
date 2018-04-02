clc;
clear all;

f = inline('z+(2*dy)+y-(exp(-t))','z','dy','y','t');
z=2;
y=1;
h=0.25;
f1=z;
f2=inline('exp(-t)-(2*z)-y','t','z','y');

t=input('enter value of y to be find');
i=0;
a=y;
b=z;
while i<=t-h
    
    
    z=z+(h*f2(i,z,a))
    y=y+(h*b)
    i=i+.25;
    a=y;
    b=z;
    
end
    
