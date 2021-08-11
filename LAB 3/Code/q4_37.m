% Q4 %

%%

%{
    for x(t) = cos(5*pi*t), maximum frequency wm = 5*pi
    So, Nyquist rate  = 2*wm = 10*pi
    So, for perfect reconstruction of x(t), sampling interval Ts < 2pi / wm.
    i.e Ts < 0.2 seconds for perfect reconstruction.
 %}

t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine);

%%
%%%%%%%%%% i, %%%%%%%%%%
Ts = 0.1;

% Getting samples for x[n] = x(nTs)
t_samples = 0:Ts:2;
xn = zeros(size(t_samples));
for nn = 1 : 2/Ts + 1
    xn(nn) = xt((1000*Ts*(nn - 1)) + 1);
end

%Sinc reconstuction of x(t) using samples x[n]%
n = 0:2/Ts;  %vector of integer locations of samples
xr = sinc_recon(n, xn, Ts, t_fine);

figure(4);
sgtitle("Reconstuction $x_r(t)$ of $x(t) = cos(5\pi t)$ using samples $x[n] = x(nT_s)$ for various values of $T_s$", 'interpreter', 'latex');

subplot(2, 2, 1);
stem(t_samples, xn);
hold on;
plot(t_fine, xr);
hold off;
xlabel("$0 < t < 2$", 'interpreter', 'latex');
legend("$x[n]$", "$x_r(t)$", 'interpreter', 'latex');
title("$T_s = 0.1s$", 'interpreter', 'latex');


%%
%%%%%%%%%% ii, %%%%%%%%%%
Ts = 0.2;

% Getting samples for x[n] = x(nTs)
t_samples = 0:Ts:2;
xn = zeros(size(t_samples));
for nn = 1 : 2/Ts + 1
    xn(nn) = xt((1000*Ts*(nn - 1)) + 1);
end

%Sinc reconstuction of x(t) using samples x[n]%
n = 0:2/Ts;  %vector of integer locations of samples
xr = sinc_recon(n, xn, Ts, t_fine);


subplot(2, 2, 2);
stem(t_samples, xn);
hold on;
plot(t_fine, xr);
hold off;
xlabel("$0 < t < 2$", 'interpreter', 'latex');
legend("$x[n]$", "$x_r(t)$", 'interpreter', 'latex');
title("$T_s = 0.2s$", 'interpreter', 'latex');


%%
%%%%%%%%%% iii, %%%%%%%%%%
Ts = 0.3;

% Getting samples for x[n] = x(nTs)
t_samples = 0:Ts:2;
xn = zeros(size(t_samples));
for nn = 1 : 2/Ts + 1
    xn(nn) = xt((1000*Ts*(nn - 1)) + 1);
end

%Sinc reconstuction of x(t) using samples x[n]%
n = 0:2/Ts;  %vector of integer locations of samples
xr = sinc_recon(n, xn, Ts, t_fine);


subplot(2, 2, 3);
stem(t_samples, xn);
hold on;
plot(t_fine, xr);
hold off;
xlabel("$0 < t < 2$", 'interpreter', 'latex');
legend("$x[n]$", "$x_r(t)$", 'interpreter', 'latex');
title("$T_s = 0.3s$", 'interpreter', 'latex');


%%
%%%%%%%%%% iv, %%%%%%%%%%
Ts = 0.4;

% Getting samples for x[n] = x(nTs)
t_samples = 0:Ts:2;
xn = zeros(size(t_samples));
for nn = 1 : 2/Ts + 1
    xn(nn) = xt((1000*Ts*(nn - 1)) + 1);
end

%Sinc reconstuction of x(t) using samples x[n]%
n = 0:2/Ts;  %vector of integer locations of samples
xr = sinc_recon(n, xn, Ts, t_fine);


subplot(2, 2, 4);
stem(t_samples, xn);
hold on;
plot(t_fine, xr);
hold off;
xlabel("$0 < t < 2$", 'interpreter', 'latex');
legend("$x[n]$", "$x_r(t)$", 'interpreter', 'latex');
title("$T_s = 0.4s$", 'interpreter', 'latex');

%%
%{
    For Ts = 0.1, we observe perfect reconstruction as ws = 2pi/Ts = 20pi is greater
    than the Nyquist rate 10pi.

    For Ts = 0.2, we observe that the reconstruction is not that good as
    that when Ts = 0.1 (Mostly off from the original signal at maximas and minimas). 
    Here ws = 2pi/Ts = 10pi is equal to the Nyquist rate.

    For Ts = 0.3 and Ts = 0.4, there is very little similarity between the
    original signal and the reconstructed signal.Here, in both cases, ws is
    less than the Nyquist rate.

    So, as Ts increases, the error between the original signal and the
    reconstructed signal increases / similarity betweeen them decreases.

%}