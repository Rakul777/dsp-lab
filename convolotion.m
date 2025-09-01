clc;
clear all;
close all;
f=300;
f1=200;
fs=10*f;
N=1000;
n=0:1:N-1;
k=0:1:N-1;
k=0:1:N-1;
x=cos(2*pi*f*n/fs);
x1=cos(2*pi*f1*n/fs);
LHS=cconv(x,x1,N);
RHS=ifft(fft(x).*fft(x1))
figure;
plot(real(LHS(1:100)));
figure;
plot(real(RHS(1:100)));