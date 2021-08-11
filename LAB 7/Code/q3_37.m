% Question 3 %

% Computing the DFT for some standard signals
%% PART A
% A column vector with L ones and N-L zeroes
L=4;

% For N=4
N=4;
x=[ones(L,1);zeros(N-L,1)]; %defining our sequence

y=fft(x); % Applying DFT on our sequence

% Plotting the original sequence along with the magnitude and phase 
% angle of our DFT sequence
figure(1);
sgtitle("DFT of x[n], when N=4 and L=4")
subplot(3,1,1);
stem(x);
title("Original sequence",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("x[n]",'interpreter','latex');
grid on;

subplot(3,1,2);
stem(abs(y));
title("Magnitude of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$|X[n]|$",'interpreter','latex');
grid on;

subplot(3,1,3);
stem(angle(y));
title("Phase of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$\theta(X[n])$",'interpreter','latex');
grid on;

% For N=16
N=16;
x=[ones(L,1);zeros(N-L,1)];%defining our sequence

y=fft(x); % Applying DFT on our sequence

% Plotting the original sequence along with the magnitude and phase 
% angle of our DFT sequence
figure(2);
sgtitle("DFT of x[n], when N=16 and L=4")
subplot(3,1,1);
stem(x);
title("Original sequence",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("x[n]",'interpreter','latex');
grid on;

subplot(3,1,2);
stem(abs(y));
title("Magnitude of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$|X[n]|$",'interpreter','latex');
grid on;

subplot(3,1,3);
stem(angle(y));
title("Phase of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$\theta(X[n])$",'interpreter','latex');
grid on;

% For N=64
N=64;
x=[ones(L,1);zeros(N-L,1)];%defining our sequence

y=fft(x);% Applying DFT on our sequence

% Plotting the original sequence along with the magnitude and phase 
% angle of our DFT sequence
figure(3);
sgtitle("DFT of x[n], when N=64 and L=4")
subplot(3,1,1);
stem(x);
title("Original sequence",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("x[n]",'interpreter','latex');
grid on;

subplot(3,1,2);
stem(abs(y));
title("Magnitude of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$|X[n]|$",'interpreter','latex');
grid on;

subplot(3,1,3);
stem(angle(y));
title("Phase of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$\theta(X[n])$",'interpreter','latex');
grid on;

%% PART B
% the given sequence is x[n]=sin(w_o*n)

w_0=(3*pi)/10;% given w_0 for our sin
N=20; % number of samples
n=0:N-1;

x=sin(w_0*n);%defining our sequence
y=fft(x);% Applying DFT on our sequence

% Plotting the original sequence along with the magnitude and phase 
% angle of our DFT sequence
figure(4);
sgtitle("DFT of x[n]=sin($\omega_{o}$n), where $\omega_{o}=\frac{3\pi}{10}$ and N=20",'interpreter','latex');
subplot(3,1,1);
stem(n,x);
title("Original sequence",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("x[n]",'interpreter','latex');
grid on;

subplot(3,1,2);
stem(n,abs(y));
title("Magnitude of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$|X[n]|$",'interpreter','latex');
grid on;

subplot(3,1,3);
stem(n,angle(y));
title("Phase of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$\theta(X[n])$",'interpreter','latex');
grid on;

%% PART C

% the given sequence is x[n]=cos(w_o*n)
w_0=(3*pi)/10; % given w_o for our cosine samples
N=20; % number of samples
n=0:N-1;

x=cos(w_0*n);%defining our sequence
y=fft(x);% Applying DFT on our sequence% Applying DFT on our sequence

% Plotting the original sequence along with the magnitude and phase 
% angle of our DFT sequence
figure(5);
sgtitle("DFT of x[n]=cos($\omega_{o}$n), where $\omega_{o}=\frac{3\pi}{10}$ and N=20",'interpreter','latex');
subplot(3,1,1);
stem(n,x);
title("Original sequence",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("x[n]",'interpreter','latex');
grid on;

subplot(3,1,2);
stem(n,abs(y));
title("Magnitude of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$|X[n]|$",'interpreter','latex');
grid on;

subplot(3,1,3);
stem(n,angle(y));
title("Phase of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$\theta(X[n])$",'interpreter','latex');
grid on;

%% PART D

% the given sequence is x[n]=sin(w_o*(n-1))
w_0=(3*pi)/10;% given w_o for our sin samples
N=20; % number of samples 
n=0:N-1;

x=sin(w_0*(n-1));%defining our sequence
y=fft(x);% Applying DFT on our sequence

% Plotting the original sequence along with the magnitude and phase 
% angle of our DFT sequence
figure(6);
sgtitle("DFT of x[n]=sin($\omega_{o}$(n-1)), where $\omega_{o}=\frac{3\pi}{10}$ and N=20",'interpreter','latex');
subplot(3,1,1);
stem(n,x);
title("Original sequence",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("x[n]",'interpreter','latex');
grid on;

subplot(3,1,2);
stem(n,abs(y));
title("Magnitude of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$|X[n]|$",'interpreter','latex');
grid on;

subplot(3,1,3);
stem(n,angle(y));
title("Phase of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$\theta(X[n])$",'interpreter','latex');
grid on;

%% PART E

% the given sequence is the exponential x[n]=(0.8)^n
N=20; % number of samples
n=0:N-1;

x=(0.8).^(n);%defining our sequence
y=fft(x);% Applying DFT on our sequence

% Plotting the original sequence along with the magnitude and phase 
% angle of our DFT sequence
figure(7);
sgtitle("DFT of x[n]=$0.8^n$, with N=20",'interpreter','latex');
subplot(3,1,1);
stem(n,x);
title("Original sequence",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("x[n]",'interpreter','latex');
grid on;

subplot(3,1,2);
stem(n,abs(y));
title("Magnitude of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$|X[n]|$",'interpreter','latex');
grid on;

subplot(3,1,3);
stem(n,angle(y));
title("Phase of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$\theta(X[n])$",'interpreter','latex');
grid on;

%% PART F

% the given sequence is the exponential x[n]=(-0.8)^n
N=20; % number of samples
n=0:N-1;

x=(-0.8).^n; %defining our sequence
y=fft(x); % Applying DFT on our sequence

% Plotting the original sequence along with the magnitude and phase 
% angle of our DFT sequence
figure(8);
sgtitle("DFT of x[n]=$(-0.8)^n$, with N=20",'interpreter','latex');
subplot(3,1,1);
stem(n,x);
title("Original sequence",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("x[n]",'interpreter','latex');
grid on;

subplot(3,1,2);
stem(n,abs(y));
title("Magnitude of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$|X[n]|$",'interpreter','latex');
grid on;

subplot(3,1,3);
stem(n,angle(y));
title("Phase of X[n]",'interpreter','latex');
xlabel("$n$",'interpreter','latex');
ylabel("$\theta(X[n])$",'interpreter','latex');
grid on;

%% OBSERVATIONS
%{
Since our signal is defined from 0 to N-1, by the properties of DFT , the
signal must be symmetrical about k=N/2. So we have to check the amplitude
of the signal at k=N/2 ,k=0 and k=N.In case of a low frequency , we will
have high amplitude peaks near 0 and N. While in the case of a high
frequency, we will have high amplitude peaks near N/2.

So,
if the magnitude is high near 0 and N then it is low frequency

if the magnitude is high near N/2 then it is high frequency 

%}

