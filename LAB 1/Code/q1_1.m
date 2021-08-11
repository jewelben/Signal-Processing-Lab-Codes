% Q1.1 %

% PART A %

% define relevant parameters
T = 1;
t1 = 0; % left limit is 0
t2 = 1; % right limit is 1
N = 5;

% define relevant expressions
syms t;
xt = 2 * cos(2 * pi * t) + cos(6 * pi * t); % sum of cosines wave

% function call to find FS coefficients
F = fourierCoeff(t, xt, T, t1, t2, N);

% plotting
FS_idx = -N:N;
figure(1);
stem(FS_idx,F);
xlabel("$-5 < k < 5$", 'interpreter', 'latex');
ylabel("$a_k$", 'interpreter', 'latex');
title("Fourier series coefficients of the given function $x(t)$", 'interpreter', 'latex');
grid on;


%Since the function itself is given as a combination of a finite number of
%sinusoidal functions, the FS coefficients would corrospond to the
%coefficients of those sinusoids (divided by 2). So, analytically, the
%non-zero FS coefficients would be 0.5, 1, 1, 0.5. This agrees with the
%plot generated.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART B %

T = 1;
t1 = -0.5;
t2 = 0.5;
N = 10;
T1 = 0.25; %As T = 4T1

xt = piecewise(-T1 <= t & t <= T1, 1, T1 < abs(t) < T / 2, 0);  
F = fourierCoeff(t, xt, T, t1, t2, N);

% plotting
FS_idx = -N:N;
figure(2);
stem(FS_idx, F);
xlabel("$-10 < k < 10$", 'interpreter', 'latex');
ylabel("$a_k$", 'interpreter', 'latex');
title("Fourier series coefficients of the given function $x(t)$", 'interpreter', 'latex');
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
