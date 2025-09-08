clc;
close all;
clear all;
M=2;
n=0:1:100;
x=cos(pi*n/3);
x_down=x(1:M:end);
h=fir1(101,1/M,hamming(102));
x_lpf=conv(x,h);
x_antialai=x_lpf(51:end-50);
x_deci=x_antialai(1:M:end);
x_f=fftshift(fft(x,100));
xlpf_f=fftshift(fft(x_antialai,100));
xdeci_f=fftshift(fft(x_deci,100));
xaxis=linspace(-1,1,100);
plot(xaxis,abs(x_f));
figure;
xaxis=linspace(-1,1,100);
plot(xaxis,abs(xdeci_f));
figure;
stem(x);
figure;
stem(x_down);


