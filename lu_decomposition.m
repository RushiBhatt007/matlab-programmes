clc;
clear all;
disp('your matrix is type of AX=B');
A = input('Enter matrix A : ');
b = input('enter matrix B : ');

[m,n]=size(A)

L=zeros(m,m);
U=zeros(m,m);
for i=1:m
    L(i,i)=1;
end
for i=1:m    
    for k=1:i-1
        L(i,k)=A(i,k);
        for j=1:k-1
            L(i,k)= L(i,k)-L(i,j)*U(j,k);
        end
        L(i,k) = L(i,k)/U(k,k);
    end
    for k=i:m
        U(i,k) = A(i,k);
        for j=1:i-1
            U(i,k)= U(i,k)-L(i,j)*U(j,k);
        end
    end
end
U
L

x=zeros(m,m);
y=zeros(m,m);

e=inv(L);
y=e*b;
y
f=inv(U);
x=f*y;