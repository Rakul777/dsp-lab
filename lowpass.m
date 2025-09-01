clc;
clear all;
close all;
ap = 3;
as = 20;
fp = 300;
fst = 500;
fs = 5000;
Wp = 2*fp/fs;
Ws = 2*fst/fs;
[n,Wc] = buttord(Wp,Ws,ap,as);
[num Den] = butter(n,Wc,'low');
h = freqz(num,Den,1000)
xaxis = linspace(0,fs/2,length(h))
plot(xaxis,abs(h))