% Q1.4 %

% PART A %

syms t;

T = 1;
t1 = -0.5;
t2 = 0.5;
N = 10;

x1t = piecewise(-0.5 < t < -0.25, 0, -0.25 <= t  <= 0.25, abs(t), 0.25 < t < 0.5, 0);

% function call to find FS coefficients
F = fourierCoeff(t, x1t, T, t1, t2, N);

% plotting
FS_idx = -N:N;
figure(1);

subplot(2, 1, 1);
stem(FS_idx, F);
xlabel("$-10 < k < 10$", 'interpreter', 'latex');
ylabel("$a_k$", 'interpreter', 'latex');
grid on;

%The graph is even, just like the given function, and the FS coeffiecients
%are purely real.

% PART B %

T = 1;
t1 = -0.5;
t2 = 0.5;
N = 10;

x2t = piecewise(-0.5 < t < -0.25, 0, -0.25 <= t  <= 0.25, t, 0.25 < t < 0.5, 0);

% function call to find FS coefficients
F = fourierCoeff(t, x2t, T, t1, t2, N);

% plotting
FS_idx = -N:N;
subplot(2, 1, 2);
stem(FS_idx, F / 1i); 

%Odd function, hence coefficients are purely complex, so we plot the
%coefficients divided by i.
xlabel("$-10 < k < 10$", 'interpreter', 'latex');
ylabel("$\frac{a_k}{i}$", 'interpreter', 'latex');
grid on;

%The graph is odd, just like the given function
sgtitle("Plots for $q1.4a$ and $q1.4b$", 'interpreter', 'latex');


%{

q1.4c) 
    For 1.4a),  
       % The graph is even, just like the given function, and the FS coeffiecients
       % are purely real.
       % The plot seems to be even, just like the given function
    
    For 1.4b),
       % Odd function, hence coefficients are purely complex
       % The plot seems to be odd, just like the given function

%}