clc;
clear all;
close all;
A=2;
f=200;
fs=5*f;
N=1000;
n=0.1:1:(N-1);
x1=A*cos(2*pi*f*n/fs);
for k=1:1:N
    x2(k)=0;
    for n=1:1:N
        x2(k)=x2(k)+x1(n)*exp(-j*2*pi*(k-1)/N); 
    end
end
x2_re=[x2(501:1000) x2(1:500)]
xaxis=linsapce(-fs/2,fs/2,1000);
figure;
plot(x1()





