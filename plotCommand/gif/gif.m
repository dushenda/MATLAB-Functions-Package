clear;clc;
n = 7;

A = zeros(n,n);

i = 1;

j = (n+1)/2;

figure

axis off



for k = 1:n^2

is = i;

js = j;

A(i,j) = k;

i = n - rem(n+1-i,n);

j = rem(j,n) + 1;

if A(i,j) ~= 0

i = rem(is,n) + 1;

j = js;

end

clf

surf(A);

frame(k)=getframe(gcf); % get the frame

pause(0.1)

end

writegif('test.gif',frame,0.1);