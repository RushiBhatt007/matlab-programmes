clc;
clear all;
f= inline('(2+(0.6*(c^1.6)))/(1+(0.5*(c^0.7)))','c'); 

c= 1;
t= 0;
h= -0.1;


while c>=(0.2-h)
   
    tp= t + h*(f(c));
    t = t -(h*((f(c))+(f((c+h))))/2)
    c=c+h;
    
end
t
