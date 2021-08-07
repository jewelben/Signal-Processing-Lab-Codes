% Q1.3 %

syms t;

T = 1;
t1 = - T / 2;
t2 = T / 2;
N = 10 * T;
T1 = 0.1; 

xt = piecewise(-T1 <= t & t <= T1, 1, T1 < abs(t) < T / 2, 0);  
F = fourierCoeff(t, xt, T, t1, t2, N);

figure(1);
% plotting when T = 1
FS_idx = -N:N;
subplot(2, 2, 1);
stem(FS_idx, T * F);
xlabel("$-10 < k < 10$", 'interpreter', 'latex');
ylabel("$Ta_k$", 'interpreter', 'latex');
grid on;


T = 10;
t1 = - T / 2;
t2 = T / 2;
N = 10 * T;

xt = piecewise(-T1 <= t & t <= T1, 1, T1 < abs(t) < T / 2, 0);  
F = fourierCoeff(t, xt, T, t1, t2, N);

% plotting when T = 10
FS_idx = -N:N;
subplot(2, 2, 2);
stem(FS_idx, T * F);
xlabel("$-100 < k < 100$", 'interpreter', 'latex');
ylabel("$Ta_k$", 'interpreter', 'latex');
grid on;


T = 20;
t1 = - T / 2;
t2 = T / 2;
N = 10 * T;

xt = piecewise(-T1 <= t & t <= T1, 1, T1 < abs(t) < T / 2, 0);  
F = fourierCoeff(t, xt, T, t1, t2, N);

% plotting when T = 20
FS_idx = -N:N;
subplot(2, 2, 3);
stem(FS_idx, T * F);
xlabel("$-200 < k < 200$", 'interpreter', 'latex');
ylabel("$Ta_k$", 'interpreter', 'latex');
grid on;

sgtitle("Graph of scaled FS coefficients $Ta_k$ versus $k$ for different values of $T$", 'interpreter', 'latex');
%All the three plots look almost like scaled versions of each other, and
%resembles a scaled sinc function (at t = 0, F takes the value 0.2T (i.e 2T1).  
%As T -> infinity, the plot becomes sampled with a closer and closer
%spacing, ie the FS coefficients become more and more close to each other.
%So, the plot sort of acts as an envelope for the FS coefficients as we
%increase the value of T to infinity.