% Q3 %

%%
t_fine = -10:0.001:10;
xt = triangularPulse(t_fine); 
% To consider samples only at the base of the triangle, t_samples is
% initialised as t_samples = -1:Ts:1, where Ts is the sampling interval

%%
%%%%%%%%%% i, %%%%%%%%%%
Ts = 0.5;

% Getting samples for x[n] = x(nTs)
t_samples = -1:Ts:1;
xn = zeros(size(t_samples));
for nn = 1 : 2/Ts + 1
    xn(nn) = xt(9000 + (1000*Ts*(nn - 1)) + 1);
end

%Sinc reconstuction of x(t) using samples x[n]%
n = -1/Ts:1/Ts;  %vector of integer locations of samples
xr = sinc_recon(n, xn, Ts, t_fine);

figure(1);
sgtitle("Reconstuction $x_r(t)$ of $x(t)$ using samples $x[n] = x(nT_s)$ for various values of $T_s$", 'interpreter', 'latex');

subplot(2, 2, 1);
stem(t_samples, xn);
hold on;
plot(t_fine, xr);
hold off;
xlabel("$-10 < t < 10$", 'interpreter', 'latex');
legend("$x[n]$", "$x_r(t)$", 'interpreter', 'latex');
title("$T_s = 0.5s$", 'interpreter', 'latex');


%%
%%%%%%%%%% ii, %%%%%%%%%%
Ts = 0.2;

% Getting samples for x[n] = x(nTs)
t_samples = -1:Ts:1;
xn = zeros(size(t_samples));
for nn = 1 : 2/Ts + 1
    xn(nn) = xt(9000 + (1000*Ts*(nn - 1)) + 1);
end

%Sinc reconstuction of x(t) using samples x[n]%
n = -1/Ts:1/Ts;  %vector of integer locations of samples
xr = sinc_recon(n, xn, Ts, t_fine);


subplot(2, 2, 2);
stem(t_samples, xn);
hold on;
plot(t_fine, xr);
hold off;
xlabel("$-10 < t < 10$", 'interpreter', 'latex');
legend("$x[n]$", "$x_r(t)$", 'interpreter', 'latex');
title("$T_s = 0.2s$", 'interpreter', 'latex');


%%
%%%%%%%%%% iii, %%%%%%%%%%
Ts = 0.1;

% Getting samples for x[n] = x(nTs)
t_samples = -1:Ts:1;
xn = zeros(size(t_samples));
for nn = 1 : 2/Ts + 1
    xn(nn) = xt(9000 + (1000*Ts*(nn - 1)) + 1);
end

%Sinc reconstuction of x(t) using samples x[n]%
n = -1/Ts:1/Ts;  %vector of integer locations of samples 
xr = sinc_recon(n, xn, Ts, t_fine);


subplot(2, 2, 3);
stem(t_samples, xn);
hold on;
plot(t_fine, xr);
hold off;
xlabel("$-10 < t < 10$", 'interpreter', 'latex');
legend("$x[n]$", "$x_r(t)$", 'interpreter', 'latex');
title("$T_s = 0.1s$", 'interpreter', 'latex');


%%
%%%%%%%%%% iv, %%%%%%%%%%
Ts = 0.05;

% Getting samples for x[n] = x(nTs)
t_samples = -1:Ts:1;
xn = zeros(size(t_samples));
for nn = 1 : 2/Ts + 1
    xn(nn) = xt(9000 + (1000*Ts*(nn - 1)) + 1);
end

%Sinc reconstuction of x(t) using samples x[n]%
n = -1/Ts:1/Ts;  %vector of integer locations of samples
xr = sinc_recon(n, xn, Ts, t_fine);

subplot(2, 2, 4);
stem(t_samples, xn);
hold on;
plot(t_fine, xr);
hold off;
xlabel("$-10 < t < 10$", 'interpreter', 'latex');
legend("$x[n]$", "$x_r(t)$", 'interpreter', 'latex');
title("$T_s = 0.05s$", 'interpreter', 'latex');


%%
%{
    As we decrease the value of sampling interval Ts, we can observe that the
    reconstuction of x(t) using samples x[n]structed signal xr(t) becomes more and more similar to x(t). In other
    words, as Ts decreases, the error between x(t) and xr(t) decreases.
%}