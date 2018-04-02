clc;
clear all;
% data=[0, 0;
%     10, 227.04;
%     15, 362.78;
%     20, 517.35;
%     22.5, 602.97;
%     30, 901.67];
%data
data=[0,5;
    1,6;
    2,9;
    3,14;
    4,21]

x=input('enter the value of required prediction: ');
n=input('enter the order of equation: ');
data(:,3)=abs(data(:,1)-x);
data=sortrows(data,3);
Ndata=data(1:n+1,:);
Ndata=sortrows(Ndata,1);

for i=1:1:n
    k=i+1;
    i
    for j=1:1:n
        j
        if k<=n+1
           k
           Ndata(j,i+2)=(Ndata(j+1,i+1)-Ndata(j,i+1))/(Ndata(k,1)-Ndata(j,1))
           k=k+1;
        end
    end
end
Ndata

B=ones(n+1,1);
for i=2:1:n+1
    for j=1:1:i-1
        B(i,1)=B(i,1)*(x-Ndata(j,1));
    end
end
B
A=0;
for i=1:1:n+1
    A=A+(B(i,1)*Ndata(1,i+1));
end
A