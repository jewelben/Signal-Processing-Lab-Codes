% % Question 2

% Given parameters%
w_0=pi/200;
w=-10:0.01:10;
n=0:1000;

%% Part C

% sine wave %
s=zeros(1,1001);
v=zeros(1,1001);
x=zeros(1,1001);

for a=n
    s(a+1)=5*sin(w_0*a);
    v(a+1)=randn();
    x(a+1)=s(a+1)+v(a+1);
end

figure(1);

sgtitle("Comparision of Original signal with the filtered signal (with varying M)");
subplot(2,2,1);
xlim([0 1021]);
plot(s);
hold on;
plot(x,'r');
hold off;
xlabel("$0<=n<=1000$",'interpreter','latex');
ylabel("s[n] and x[n]",'interpreter','latex');
title("Original signal vs Noisy signal",'interpreter','latex');
legend('$s[n]$','$x[n]$','interpreter', 'latex');
grid on;

%% Part D

%% When M=5
M=5;
h=zeros(1,M);

for m=1:M
    h(m)=1/M;
end

y_1=conv(x,h,'full');

subplot(2,2,2);
xlim([0 length(y_1)]);
plot(s);
hold on;
plot(y_1,'r');
hold off;
xlabel("$0<=n<=1000$",'interpreter','latex');
ylabel("s[n] and y[n]",'interpreter','latex');
title("Original signal vs Filtered signal with M=5",'interpreter','latex');
legend('$s[n]$','$y[n]$','interpreter', 'latex');
grid on;

%% When M=21
M=21;
h=zeros(1,M);

for m=1:M
    h(m)=1/M;
end

y_2=conv(x,h,'full');

subplot(2,2,3);
xlim([0 length(y_2)]);
plot(s);
hold on;
plot(y_2,'r');
hold off;
xlabel("$0<=n<=1000$",'interpreter','latex');
ylabel("s[n] and y[n]",'interpreter','latex');
title("Original signal vs Filtered signal with M=21",'interpreter','latex');
legend('$s[n]$','$y[n]$','interpreter', 'latex');
grid on;

%% When M=51
M=51;
h=zeros(1,M);

for m=1:M
    h(m)=1/M;
end

y_3=conv(x,h,'full');

subplot(2,2,4);
xlim([0 length(y_3)]);
plot(s);
hold on;
plot(y_3,'r');
hold off;
xlabel("$0<=n<=1000$",'interpreter','latex');
ylabel("s[n] and y[n]",'interpreter','latex');
title("Original signal vs Filtered signal with M=51",'interpreter','latex');
legend('$s[n]$','$y[n]$','interpreter', 'latex');
grid on;

%% Part F
xn = x;
N0 = 1;

% Calculating DTFT of x[n]
y = DT_Fourier(xn,N0,w);

% Calculating DTFT of filtered signal y[n] when M=5
N0 = 1;
y_a=DT_Fourier(y_1,N0,w);

% Calculating DTFT of filtered signal y[n] when M=21
N0 = 1;
y_b=DT_Fourier(y_2,N0,w);

% Calculating DTFT of filtered signal y[n] when M=51
N0 = 1;
y_c=DT_Fourier(y_3,N0,w);

figure(2);
sgtitle("DTFT spectrum for noisy and filtered signals for different M",'interpreter','latex');

subplot(2,2,1);
plot(w,abs(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|X(\omega)|$",'interpreter','latex');
title("DTFT spectrum of noisy signal x[n]",'interpreter','latex');
grid on;

subplot(2,2,2);
plot(w,abs(y_a));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|Y(\omega)|$",'interpreter','latex');
title("DTFT spectrum of filtered signal y[n] when M=5",'interpreter','latex');
grid on;

subplot(2,2,3);
plot(w,abs(y_b));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|Y(\omega)|$",'interpreter','latex');
title("DTFT spectrum of filtered signal y[n] when M=21",'interpreter','latex');
grid on;

subplot(2,2,4);
plot(w,abs(y_c));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|Y(\omega)|$",'interpreter','latex');
title("DTFT spectrum of filtered signal y[n] when M=51",'interpreter','latex');
grid on;

%% Part G

h=[1 -1];

figure(3);

sgtitle("Comparision of Original signal with the filtered signal(digital differentiator)");
subplot(2,1,1);
xlim([0 1010]);
plot(s);
hold on;
plot(x,'r');
hold off;
xlabel("$0<=n<=1000$",'interpreter','latex');
ylabel("s[n] and x[n]",'interpreter','latex');
title("Original signal vs Noisy signal",'interpreter','latex');
legend('$s[n]$','$x[n]$','interpreter', 'latex');
grid on; 

y_1=zeros(1,length(x));
y_1=conv(x,h,'full');

subplot(2,1,2);
xlim([0 1010]);
plot(s);
hold on;
plot(y_1,'r');
hold off;
xlabel("$0<=n<=1000$",'interpreter','latex');
ylabel("s[n] and y[n]",'interpreter','latex');
title("Original signal vs Filtered signal",'interpreter','latex');
legend('$s[n]$','$y[n]$','interpreter', 'latex');
grid on;

xn = x;
N0 = 1;

% Calculating DTFT of x[n]
y = DT_Fourier(xn,N0,w);

% Calculating DTFT of filtered signal y[n] when M=5
N0 = 1;
y_a=DT_Fourier(y_1,N0,w);


figure(4);
sgtitle("DTFT spectrum for noisy and filtered signals",'interpreter','latex');

subplot(2,1,1);
plot(w,abs(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|X(\omega)|$",'interpreter','latex');
title("DTFT spectrum of noisy signal x[n]",'interpreter','latex');
grid on;

subplot(2,1,2);
plot(w,abs(y_a));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|Y(\omega)|$",'interpreter','latex');
title("DTFT spectrum of filtered signal y[n] using digital differentiator",'interpreter','latex');
grid on;

