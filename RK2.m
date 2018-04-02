
% clc;
% clear all;
f= inline('(-2.2067*(10^(-12)))*((y^4)-(81*(10^8)))','x','y');

x= 0;
y= 1200;
h= 120;

A= 480-h;
for x= 0: h: A
   
    k1= f(x,y);
    k2= f(x+h,y+k1*h);
    
    y= y + h*(k1+k2)/2; 
end
y
