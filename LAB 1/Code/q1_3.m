% Q1.3 %

% PART A %

%{
    Using the formula for FS coefficients, the FS coefficients for the
    given square wave is:

        a_k = sin(k *w0 * (T_1))/(k * pi) for k != 0

    and

        a_k = 2(T_1) / T for k = 0
    
    where w0 = 2 * pi / T;
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART B %
syms t;

T = 1;
t1 = - T / 2;
t2 = T / 2;
N = 10 * T;
T1 = 0.1; 

xt = piecewise(-T1 <= t <= T1, 1, T1 < abs(t)< T / 2, 0);  
F = fourierCoeff(t, xt, T, t1, t2, N);

figure(1);
% plotting when T = 1
FS_idx = -N:N;
subplot(2, 2, 1);
stem(FS_idx, T * F);
xlabel("$-10 < N < 10$", 'interpreter', 'latex');
ylabel("$T*a_k$", 'interpreter', 'latex');
title("Fourier series coefficients when $T=1$ ", 'interpreter', 'latex');
grid on;


T = 10;
t1 = - T / 2;
t2 = T / 2;
N = 10 * T;

xt = piecewise(-T1 <= t <= T1, 1, T1 < abs(t)< T / 2, 0);  
F = fourierCoeff(t, xt, T, t1, t2, N);

% plotting when T = 10
FS_idx = -N:N;
subplot(2, 2, 2);
stem(FS_idx, T * F);
xlabel("$-100 < N < 100$", 'interpreter', 'latex');
ylabel("$T*a_k$", 'interpreter', 'latex');
title("Fourier series coefficients when $T=10$ ", 'interpreter', 'latex');
grid on;


T = 20;
t1 = - T / 2;
t2 = T / 2;
N = 10 * T;

xt = piecewise(-T1 <= t <= T1, 1, T1 < abs(t)< T / 2, 0);  
F = fourierCoeff(t, xt, T, t1, t2, N);

% plotting when T = 20
FS_idx = -N:N;
subplot(2, 2, 3);
stem(FS_idx, T * F);
xlabel("$-200 < N < 200$", 'interpreter', 'latex');
ylabel("$T*a_k$", 'interpreter', 'latex');
title("Fourier series coefficients when $T=20$ ", 'interpreter', 'latex');
grid on;

%All the three plots look almost like scaled versions of each other, and
%resembles a scaled sinc function (at t = 0, F takes the value 2T1).  
%As T -> infinity, the plot becomes sampled with a closer and closer
%spacing, ie the FS coefficients become more and more close to each other.
%So, the plot sort of acts as an envelope for the FS coefficients as we
%increase the value of T to infinity.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART C %

T = 1;
time=-0.5:0.01:0.5;
t1 = - T / 2;
t2 = T / 2;
T1 = 0.1; 
xt = piecewise(-T1 <= t <= T1, 1, T1 < abs(t)< T / 2, 0);

N = 10 ;
F = fourierCoeff(t, xt, T, t1, t2, N);
z=partialfouriersum(F,T,time);

figure(2);

hold on;

% plotting when N = 10
plot(time,z,'r');

N = 50 ;  
F = fourierCoeff(t, xt, T, t1, t2, N);
z=partialfouriersum(F,T,time);

% plotting when N = 50
plot(time,z,'b');

N = 100 ;
F = fourierCoeff(t, xt, T, t1, t2, N);
z=partialfouriersum(F,T,time);

% plotting when N = 100
plot(time,z,'g');

hold off;

title("Partial fourier series reconstruction at varying N",'interpreter','latex');
xlabel("$-0.5 < t < 0.5$", 'interpreter', 'latex');
ylabel("Amplitude of the square wave", 'interpreter', 'latex');
legend('$N=10$','$N=50$','$N=100$', 'interpreter', 'latex');


%We observe that as N increases, the overshoot/undershoot at jump discontinuities
%gradually decreases. For N = 100, it is almost not observable.
%As N increases, the graph converges to the original square wave.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%