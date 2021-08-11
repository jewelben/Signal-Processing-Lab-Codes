% % Question 2

% Given parameters%
w_0=pi/200;
w=-10:0.01:10;
n=0:1000;

%% Part C

% sine wave %
s = 5*sin(w_0*n); %Original signal s[n]=sin(nw_0)
v = randn(1, 1001);% Gaussian Noise
x = s + v;% Final noisy signal

figure(1);
%Plotting the original signal with the noisy signal , to compare 
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


%Defining the impulse response which is basically a discrete impulse train signal
%with amplitude 1/M
%% When M=5
M=5;
h=zeros(1,M);%initializing the impulse response

for m=1:M
    h(m)=1/M;
end

y_1=conv(x,h,'full');%Convolving the original signal with our impulse response to get our final signal
%Plotting our filtered signal along with our original signal for comparison
%(M=5)
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
h=zeros(1,M);%initializing the impulse response

for m=1:M
    h(m)=1/M;
end

y_2=conv(x,h,'full');%Convolving the original signal with our impulse response to get our final signal

%Plotting our filtered signal along with our original signal for
%comparison(M=21)
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
h=zeros(1,M);%initializing the impulse response

for m=1:M
    h(m)=1/M;
end

y_3=conv(x,h,'full');%Convolving the original signal with our impulse response to get our final signal

%Plotting our filtered signal along with our original signal for
%comparison(M=51)
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
xn = x; %Function for which DTFT is found(original signal)
N0 = 1;

% Calculating DTFT of x[n]
y = DT_Fourier(xn,N0,w);

% Calculating DTFT of filtered signal y[n] when M=5
y_a=DT_Fourier(y_1,N0,w);

% Calculating DTFT of filtered signal y[n] when M=21
y_b=DT_Fourier(y_2,N0,w);

% Calculating DTFT of filtered signal y[n] when M=51
y_c=DT_Fourier(y_3,N0,w);

figure(2);
sgtitle("DTFT spectrum for noisy and filtered signals for different M",'interpreter','latex');

%Plotting the DTFT of the noisy signals that are passed through the filter
%at varying M

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
% Impulse response of digital differentiator filter is defined as a positive and a negative impulse
% of magnitude 1 and separated by 1 sample

h=[1 -1]; %defining our impulse response 

figure(3);
%Plotting the original signal with the noisy signal , to compare 

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

y_1=conv(x,h,'full');% Convolution of x[n] with impulse response of our digital differentiator

%Since it doesnt depend on any parameter M,we get a single graph of the
%filtered signal (h[n] remains unchanged with varying M)

%Plotting our filtered signal along with our original signal for comparison
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

xn = x;%Function for which DTFT is found(original signal)
N0 = 1;


% Calculating DTFT of x[n]
y = DT_Fourier(xn,N0,w);

% Calculating DTFT of filtered signal y[n] when M=5
N0 = 1;
y_a=DT_Fourier(y_1,N0,w);


figure(4);
sgtitle("DTFT spectrum for noisy and filtered signals",'interpreter','latex');

% Plotting the DTFT for the noisy signal x[n], that we obtained from
% original signal along with gaussian noise

subplot(2,1,1);
plot(w,abs(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|X(\omega)|$",'interpreter','latex');
title("DTFT spectrum of noisy signal x[n]",'interpreter','latex');
grid on;

% Plotting the DTFT of the filtered signal which we obtained by passing our
% noisy signal through our differential filter

subplot(2,1,2);
plot(w,abs(y_a));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|Y(\omega)|$",'interpreter','latex');
title("DTFT spectrum of filtered signal y[n] using digital differentiator",'interpreter','latex');
grid on;


%% Observations 

%% PART A
%{
The impulse response for the moving average filter is an impulse train
signal from -M to +M , with amplitude 1/M. In class , we have defined this
as a discrete rectangular signal with base M and amplitude 1/M.(which we
have observed from the summation as convolving delta(t-t_0) with some
signal X(t), gives X(t-t_0).

h[n]={1 |n| <= M
     {0 |n| > M
%}

%% PART E

%{
We can clearly observe from the plots that as M is increased, the error in
filtering is getting reduced , thus giving us a better approximations of
the original signal s[n].

The moving average filter also causes a phase change in the sin wave ,
which means there has been a sample delay in the filtered signal.This delay
also keeps increasing as M increases.
%}

%% PART F
%{
On manually calculating , we expect the graph to have two impulse responses
at π/200 and -π/200 and then these impulses shifted by multiples of 2π.
In our graph , we can see that our impulses are present at 0.0157≈(π/200)
and these impulses are then shifted throughout the graph by multiples of
2π.

We could also observe that the noise was reducing as we kept increasing M.
%}

%% PART G
%{
 part a)
-> The impulse response of the digital differentiator consists of two
impulse signals of amplitude 1 and separated by a single sample .
h[n] is defined as h[n]= δ[n]-δ[n-1]. (which we
have observed from the formula of y[n] given as convolving delta(t-t_0) with some
signal X(t), gives X(t-t_0).

part d) We can observe that we finally only get high frequency noise after
the filteration from x[n].

part f) We observe that for lower frequencies, the magnitude is small and for higher frequencies, the magnitude is larger.
%}

%% PART H
%{
Moving Average Filter has an sinc frequency response (manually calculating the FT for the discrete rectangular pulse
which acts as a non-ideal low-pass filter.While the digital differentiator is observed to act as a high pass filter 
since for lower frequencies, the amplitude of our filtered signal is small and for higher frequencies, the amplitude is observed to be larger.
%}

