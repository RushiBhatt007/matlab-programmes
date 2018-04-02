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
k1y=0;k1z=0;k2y=0;k2z=0;

while i<=t-h
    
    
    k1y=z;
    k1z=f2(i,z,y);
    k2y=z+(k1z*h);
    k2z=f2((i+h),(z+(k1z*h)),(y+(k1y*h)));
       
    z=z+((h/2)*((k1z)+(k2z)))
    y=y+((h/2)*((k1y)+(k2y)))
    
    i=i+h

    
end