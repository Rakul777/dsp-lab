clc;
clear all;
close all;
f=200;
N=1000;
n=0:1:N-1;
fs=0.5*f;
 tvg/x=cos(2*pi*f*n/fs);
X=fftshift(fft(x));
figure;
plot(x(1:50));
figure;
xaxis=linspace(-fs/2,fs/2,N)
plot(xaxis,abs(X))