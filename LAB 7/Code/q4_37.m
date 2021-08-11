n = 0:1023;
x = cos(3*pi*n/10);

% When N = 2, X[k] = x[0]e^0 + x[1]e^(-j*pi*k).
% So, X[k] = x[0] + (-1)^k*x[1].
% So, X[0] = x[0]+x[1] and X[1] = x[0]-x[1].

X1 = fft(x); % In-built fft function
X2 = radix2fft(x); % radix2fft function, provided N = length(x) is of the form 2^m, m>=1 is an integer
disp("rms error for first function : ");
disp(rms(X1-X2));

figure(1);
sgtitle("Matlab in-built fft function vs radix2fft function for $x[n] = cos(\frac{3\pi}{10}n)$",'interpreter','latex');
subplot(2,2,1);
plot(n,abs(X1));
title("In-built Matlab fft function",'interpreter','latex');
xlabel("$0 <=k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');
grid on;
xlim([0 length(n)-1]);
subplot(2,2,2);
plot(n,angle(X1));
title("In-built Matlab fft function",'interpreter','latex');
xlabel("$0 <=k <= N-1$",'interpreter','latex');
ylabel("$\angle X[k]$",'interpreter','latex');
grid on;
xlim([0 length(n)-1]);

subplot(2,2,3);
plot(n,abs(X2));
title("radix2fft function",'interpreter','latex');
xlabel("$0 <=k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');
grid on;
xlim([0 length(n)-1]);
subplot(2,2,4);
plot(n,angle(X2));
title("radix2fft function",'interpreter','latex');
xlabel("$0 <=k <= N-1$",'interpreter','latex');
ylabel("$\angle X[k]$",'interpreter','latex');
grid on;
xlim([0 length(n)-1]);

x = [ones(1,4) zeros(1,60)];
X1 = fft(x); % In-built fft function
X2 = radix2fft(x); % radix2fft function, provided N = length(x) is of the form 2^m, m>=1 is an integer
disp("rms error for second function : ");
disp(rms(X1-X2));

figure(2);
sgtitle("Matlab in-built fft function vs radix2fft function for $x[n]$, a rectangular window function",'interpreter','latex');
subplot(2,2,1);
stem(abs(X1));
title("In-built Matlab fft function",'interpreter','latex');
xlabel("$0 <=k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');
grid on;
xlim([0 length(x)-1]);
subplot(2,2,2);
stem(angle(X1));
title("In-built Matlab fft function",'interpreter','latex');
xlabel("$0 <=k <= N-1$",'interpreter','latex');
ylabel("$\angle X[k]$",'interpreter','latex');
grid on;
xlim([0 length(x)-1]);

subplot(2,2,3);
stem(abs(X2));
title("radix2fft function",'interpreter','latex');
xlabel("$0 <=k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');
grid on;
xlim([0 length(x)-1]);
subplot(2,2,4);
stem(angle(X2));
title("radix2fft function",'interpreter','latex');
xlabel("$0 <=k <= N-1$",'interpreter','latex');
ylabel("$\angle X[k]$",'interpreter','latex');
grid on;
xlim([0 length(x)-1]);

% As seen from the rms errors between fft and radix2fft (of the order 1e-15
% and 1e-16), it is evident that the output of both functions within
% numerical precision.