 clc;
 clear all;
 close all;
 x=[1,2,3]
 h=[1,-1,2]
 N1 = length(x);
 N2 = length(h);
 N = N1+N2-1;
 x = [x zeros(1,N-N1)];
 h = [h zeros(1,N-N2)];
y=ifft(fft(x).*fft(h));
 
stem(y);
disp(y)
conv(x,h);