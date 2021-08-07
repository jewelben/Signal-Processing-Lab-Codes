%% Question 1 %%

%% PART B.1 %%

w = -10:0.01:10;

n = -5:5;
% Discrete time unit impulse function
xn = 1*(n == 0);
N0 = (length(xn)+1)/2;

% Calculating DTFT of x[n]
y = DT_Fourier(xn,N0,w);

figure(1);
sgtitle("DTFT spectrum for $\delta[n]$",'interpreter','latex');

subplot(2,2,1);
plot(w, abs(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$",'interpreter','latex');
title("Magnitude of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,2);
plot(w, angle(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\theta(X(e^{j\omega})$",'interpreter','latex');
title("Phase of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,3);
plot(w, real(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\Re(X(e^{j\omega}))$",'interpreter','latex');
title("Real part of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,4);
plot(w, imag(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\Im (X(e^{j\omega}))$",'interpreter','latex');
title("Imaginary part of $X(e^{j\omega})$",'interpreter','latex');
grid on;

%% PART B.2 %%

n = -5:5;
% Discrete time shifted unit impulse function
xn = 1*(n == -3);
N0 = (length(xn)+1)/2;

% Calculating DTFT of x[n]
y = DT_Fourier(xn,N0,w);

figure(2);
sgtitle("DTFT spectrum for $\delta[n+3]$",'interpreter','latex');

subplot(2,2,1);
plot(w, abs(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$",'interpreter','latex');
title("Magnitude of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,2);
plot(w, angle(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\theta(X(e^{j\omega})$",'interpreter','latex');
title("Phase of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,3);
plot(w, real(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\Re(X(e^{j\omega}))$",'interpreter','latex');
title("Real part of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,4);
plot(w, imag(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\Im (X(e^{j\omega}))$",'interpreter','latex');
title("Imaginary part of $X(e^{j\omega})$",'interpreter','latex');
grid on;

%% PART B.3 %%

n = -5:5;
% Discrete time rectangular pulse
xn = 1*(abs(n)<=3);
N0 = (length(xn)+1)/2;

% Calculating DTFT of x[n]
y = DT_Fourier(xn,N0,w);

figure(3);
sgtitle("DTFT spectrum for given discrete time rectangular pulse",'interpreter','latex');

subplot(2,2,1);
plot(w, abs(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$",'interpreter','latex');
title("Magnitude of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,2);
plot(w, angle(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\theta(X(e^{j\omega})$",'interpreter','latex');
title("Phase of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,3);
plot(w, real(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\Re(X(e^{j\omega}))$",'interpreter','latex');
title("Real part of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,4);
plot(w, imag(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\Im (X(e^{j\omega}))$",'interpreter','latex');
title("Imaginary part of $X(e^{j\omega})$",'interpreter','latex');
grid on;

%% PART B.4 %%

n = -200:200;
w0 = pi/4;
% Discrete time sine function
xn = sin(w0*n);
N0 = (length(xn)+1)/2;

% Calculating DTFT of x[n]
y = DT_Fourier(xn,N0,w);

figure(4);
sgtitle("DTFT spectrum for $sin(\omega_0n)$, $\omega_0 = \pi/4$",'interpreter','latex');

subplot(2,2,1);
plot(w, abs(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$",'interpreter','latex');
title("Magnitude of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,2);
plot(w, angle(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\theta(X(e^{j\omega})$",'interpreter','latex');
title("Phase of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,3);
plot(w, real(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\Re(X(e^{j\omega}))$",'interpreter','latex');
title("Real part of $X(e^{j\omega})$",'interpreter','latex');
grid on;

subplot(2,2,4);
plot(w, imag(y));
xlabel("$-10<=\omega<=10$",'interpreter','latex');
ylabel("$\Im (X(e^{j\omega}))$",'interpreter','latex');
title("Imaginary part of $X(e^{j\omega})$",'interpreter','latex');
grid on;

%% Observations for PART B %%
    
%{
    B.1:
    
        *   The DTFT of discrete time unit impulse function is a constant
            ( = 1), and hence it is real valued. Its magnitude ( = 1) and 
            phase ( = 0) is also constant throughout.

    B.2:

        *   The DTFT of discrete time shifted unit impulse function x[n - n0]
            is X(e^(jw)) = e^(-jwn0). Hence it is complex valued but its
            magnitude is constant ( = 1). Its phase oscillates between -pi
            and pi (linear change from -pi to pi but sudden jump from pi to
            -pi for negative n0), and is periodic with period 2pi/|n0|. For
            n0 = -3, X(e^(jw)) = e^(3jw) and is periodic with period 2pi/3.

    B.3:
        
        *   The DTFT of discrete time rectangular pulse x[n] (value of 1
            for abs(n) <= N1, 0 otherwise) is X(e^(jw)) = sin(w(N1 +
            0.5))/sin(w/2). Here, as per question, N1 = 3 and hence X(e^(jw)) 
            = sin(3.5w)/sin(w/2). It is purely real and has a maximum value
            of 2N1 = 7. Also, the DTFT is periodic with period 2pi.

    B.4:
        
        *   The DTFT of discrete time function x[n] = sin(w0*n) is an impulse
            train with impulses at w = 2pi*k + w0 and w = 2pi*k - w0.
            It is a purely imaginary function and is equal to X(e^(jw)) = 
            summation{k=-inf to inf}(pi/j)(delta(w-w0-2pi*k) - delta(w+w0-2pi*k)).
            Also, the DTDT is periodic with period 2pi.
    
%}

%% PART C %%

n = 0:100;

b = 0.01;
a = b;
% Discrete time one-sided exponential function
xn1 = (a.^n).*(n>=0);
y1 = DT_Fourier(xn1,N0,w);

a = -b;
% Discrete time one-sided exponential function
xn2 = (a.^n).*(n>=0);
y2 = DT_Fourier(xn2,N0,w);

N0 = 1;

figure(5);
sgtitle("DTFT analysis for $a^nu[n]$, $b = 0.01$",'interpreter','latex');

subplot(2,2,1);
stem(n,xn1);
xlabel("$0<=n<=100$",'interpreter','latex');
ylabel("$x[n]$", 'interpreter','latex');
ylim([-1 1.5]);
title("$x[n] = a^nu[n]$, $a = b$", 'interpreter','latex');
grid on;


subplot(2,2,2);
stem(n,xn2);
xlabel("$0<=n<=100$",'interpreter','latex');
ylabel("$x[n]$", 'interpreter','latex');
ylim([-1 1.5]);
title("$x[n] = a^nu[n]$, $a = -b$", 'interpreter','latex');
grid on;


subplot(2,2,3);
plot(w,abs(y1));
xlabel("$0<=w<=100$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$", 'interpreter','latex');
title("$x[n] = a^nu[n]$, $a = b$", 'interpreter','latex');
grid on;

subplot(2,2,4);
plot(w,abs(y2));
xlabel("$0<=w<=100$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$", 'interpreter','latex');
title("$x[n] = a^nu[n]$, $a = -b$", 'interpreter','latex');
grid on;


b = 0.5;
a = b;
% Discrete time one-sided exponential function
xn1 = (a.^n).*(n>=0);
y1 = DT_Fourier(xn1,N0,w);

a = -b;
% Discrete time one-sided exponential function
xn2 = (a.^n).*(n>=0);
y2 = DT_Fourier(xn2,N0,w);

N0 = 1;

figure(6);
sgtitle("DTFT analysis for $a^nu[n]$, $b = 0.5$",'interpreter','latex');

subplot(2,2,1);
stem(n,xn1);
xlabel("$0<=n<=100$",'interpreter','latex');
ylabel("$x[n]$", 'interpreter','latex');
ylim([-1 1.5]);
title("$x[n] = a^nu[n]$, $a = b$", 'interpreter','latex');
grid on;


subplot(2,2,2);
stem(n,xn2);
xlabel("$0<=n<=100$",'interpreter','latex');
ylabel("$x[n]$", 'interpreter','latex');
ylim([-1 1.5]);
title("$x[n] = a^nu[n]$, $a = -b$", 'interpreter','latex');
grid on;


subplot(2,2,3);
plot(w,abs(y1));
xlabel("$0<=w<=100$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$", 'interpreter','latex');
title("$x[n] = a^nu[n]$, $a = b$", 'interpreter','latex');
grid on;

subplot(2,2,4);
plot(w,abs(y2));
xlabel("$0<=w<=100$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$", 'interpreter','latex');
title("$x[n] = a^nu[n]$, $a = -b$", 'interpreter','latex');
grid on;


b = 0.99;
a = b;
% Discrete time one-sided exponential function
xn1 = (a.^n).*(n>=0);
y1 = DT_Fourier(xn1,N0,w);

a = -b;
% Discrete time one-sided exponential function
xn2 = (a.^n).*(n>=0);
y2 = DT_Fourier(xn2,N0,w);

N0 = 1;

figure(7);
sgtitle("DTFT analysis for $a^nu[n]$, $b = 0.99$",'interpreter','latex');

subplot(2,2,1);
stem(n,xn1);
xlabel("$0<=n<=100$",'interpreter','latex');
ylabel("$x[n]$", 'interpreter','latex');
ylim([-1 1.5]);
title("$x[n] = a^nu[n]$, $a = b$", 'interpreter','latex');
grid on;


subplot(2,2,2);
stem(n,xn2);
xlabel("$0<=n<=100$",'interpreter','latex');
ylabel("$x[n]$", 'interpreter','latex');
ylim([-1 1.5]);
title("$x[n] = a^nu[n]$, $a = -b$", 'interpreter','latex');
grid on;


subplot(2,2,3);
plot(w,abs(y1));
xlabel("$0<=w<=100$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$", 'interpreter','latex');
title("$x[n] = a^nu[n]$, $a = b$", 'interpreter','latex');
grid on;

subplot(2,2,4);
plot(w,abs(y2));
xlabel("$0<=w<=100$",'interpreter','latex');
ylabel("$|X(e^{j\omega})|$", 'interpreter','latex');
title("$x[n] = a^nu[n]$, $a = -b$", 'interpreter','latex');
grid on;

%{
    As b increases, we can observe that:

        *   The one-sided exponential decays slower. x[0] = 1 in all cases, 
            but x[100] is almost zero for b = 0.01 (1e-20) and b = 0.5 
            (7.88*1e-31). For b = 0.99, x[100] is approximately 0.366.

        *   The range of values of the magnitude of DTFT of x[n] increases.
            In all cases, as n increases, the maximum value tends to
            1/(1-b) and the minimum value tends to 1/(1+b).

    For all the cases,
    
        *   The DTFT X(e^(jw)) is equal to 1/(1-ae^(-jw)), i.e., it is
            complex valued.
        
        *   |X(e^(jw))| is equal to 1/sqrt(1+(a^2)-2acosw). As n increases, 
            the maximum value tends to 1/(1-b) and the minimum value tends 
            to 1/(1+b).

        *   |X(e^(jw))| is periodic with period 2pi.
        
        *   For a > 0, x[n] is always positive and for a < 0, the graph
            oscillates between positive and negative values depending on
            the value of n.
        
        *   |X(e^(jw))| is an even function.
        
        *   For a > 0, |X(e^(jw))| has maximas at even multiples of pi and
            minimas at odd multiples of pi.

        *   For a < 0, |X(e^(jw))| has maximas at odd multiples of pi and
            minimas at even multiples of pi.
%}