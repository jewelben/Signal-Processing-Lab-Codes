%% Question 2

%% A %%
f0 = 10;
Fs = 5000;
Ts = 1/Fs;
time_grid = 0:Ts:1;

xt = sin(2*pi*f0*time_grid);
xn = zeros(1, Fs+1);

% Sampling the signal x(t)
for nn = 1:Fs+1
    xn(nn) = xt(nn); 
end

a = 1;
B = 4;
% y is the quantized signal
y = quadratic_quant(xn, B, a);

%% B %%

figure(1);
subplot(3,1,1);
plot(time_grid, xn);
xlabel("$0 <= t <= 1$", 'interpreter', 'latex');
ylabel("Discrete-time signal $x[n$]", 'interpreter', 'latex');
subplot(3,1, 2);
plot( time_grid, y, 'r');
xlabel("$0 <= t <= 1$", 'interpreter', 'latex');
ylabel("Quantized signal $x_q[n]$", 'interpreter', 'latex');

%% C %%

eq = xn - y; % Quantization error
subplot(3, 1, 3);
plot(time_grid, eq, 'm');
xlabel("$0 <= t <= 1$", 'interpreter', 'latex');
ylabel("Quantization error $e_q[n]$", 'interpreter', 'latex');

%% D %%

figure(2);
histogram(eq, 15);
xlabel("Quantization error intervals", 'interpreter', 'latex');
ylabel("Frequency", 'interpreter', 'latex');
title("Quantization error histogram for $B = 4$", 'interpreter', 'latex');

B = 3;
y = quadratic_quant(xn, B, a);
eq = xn - y; % Quantization error
figure(3);
histogram(eq, 15);
xlabel("Quantization error intervals", 'interpreter', 'latex');
ylabel("Frequency", 'interpreter', 'latex');
title("Quantization error histogram for $B = 3$", 'interpreter', 'latex');

%{
    We can observe that the range in quantization error is more for B = 3
    than B = 4.
    For both B = 3 and B = 4, the quantization errors are more densely
    packed in the interval containing 0, than in other intervals.
    For B = 3, the end intervals (left-most and right-most) have more 
    frequency than for B = 4;
    So, it is clear that overall, the quantization error for B = 3 is
    greater than for B = 4. 
    This is expected as B = 4 maps the signal to more accurate values 
    (more levels of quantization, i.e, 16 compared to 8) than B = 3 does.

%}

%% E %%

B = 1:8;
mae_eq = zeros(1, 8);
sqnr = zeros(1, 8);
for nn = B
    y = quadratic_quant(xn, nn, a);
    eq = xn - y; % Quantization error
    mae_eq(nn) = max(abs(eq)); % Maximum absolute quantization error
    % Calculating signal to quantization noise ratio
    sqnr(nn) = sum(abs(xn).*abs(xn))/sum(abs(eq).*abs(eq)); 
end

figure(4);
plot(B, mae_eq);
xlabel("$B$", 'interpreter', 'latex');
ylabel("Maximum absolute quantization error", 'interpreter', 'latex');
title("Maximum absolute quantization error for various values of $B$", 'interpreter', 'latex');

%{
    We can observe that the maximum absolute error vs B graph is almost
    like a decreasing exponential graph. As B increases, the maximum
    absolute error decreases exponentially.

%}

%% F %%

figure(5);
plot(B, sqnr);
xlabel("$B$", 'interpreter', 'latex');
ylabel("SQNR", 'interpreter', 'latex');
title("Signal to quantization noise ratio for various values of $B$", 'interpreter', 'latex');

%{
    We can observe that the signal to quantization noise ratio vs B graph is almost
    like an exponential graph. As B increases, the SQNR value
    increases exponentially.

%}

%% G %%

%{
    The given non-uniform quantizer is more accurate when the value of x[i]
    is closer to zero. We can see that the 'steps' are smaller as regions of x[i] gets closer to 0, and
    increases till it reaches the maximum near a and -a. So, the
    quantization errors are more when the value of x[i] reaches a or -a. This can cause the maximum
    absolute error to be more than when we use uniform quantization, where
    the size of the 'steps' are uniform throughout the interval [-a, a). One reason
    for this could be that the outlying points in the quantized set of values are
    closer to the outlying values in the original discrete-time signal used in the case of uniform
    quantization than in non-uniform quantization (due to the fact that
    a(r_i^2) <= a(r_i) since 0 <= r_i <=1).
    
%}