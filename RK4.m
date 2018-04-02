
% clc;
% clear all;
f= inline('(-2.2067*(10^(-12)))*((y^4)-(81*(10^8)))','x','y'); 
x= 0; 
y= 1200;
h= 60;

A= 480-h; 

for x= 0: h: A 
   
    k1= f(x,y);
    k2= f(x+ h/2,y+ k1*h/2);
    k3= f(x+ h/2,y+ k2*h/2);
    k4= f(x+ h,y+ k3*h);
    y= y + h*(k1+ k4+ 2*(k2+k3))/6; 
end
y