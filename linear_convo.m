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
 for n=1:1:N
     y(n) = 0;
     for k=1:1:N
         if((n-k+1)>=1 && (n-k+1)<=N)
             y(n)=y(n)+x(k)*h(n-k+1);
         end
     end
 end
stem(y);
disp(y)
conv(x,h);