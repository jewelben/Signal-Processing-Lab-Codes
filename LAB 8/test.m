fs = 1;
fout = 51200;
t = 0:1/fout:20-1/fout;
x = 5*sin(pi*fs*t);
xn = x + randn(size(x));

figure(1);
plot(t,x);
hold on;
plot(t,xn);
hold off;
df = 64;
y = decimate(xn,df,250,'fir');
figure(2);
stem(y);
z = interp(y,df);
figure(3);
plot(z);

