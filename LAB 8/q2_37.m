%% Question 2 %%

%% PART A %%
[x,y] = meshgrid(-1.5:0.01:1.5,-1.5:0.01:1.5);
z = x + 1i.*y;

p = 0.9;
Xz = 1./(1-(p./z));
figure(1);
sgtitle("$X(z) = \frac{1}{1-pz^{-1}},\,p = 0.9$",'interpreter','latex');
subplot(1,2,1);
mesh(x,y,log(abs(Xz)));
xlabel("Re$(z)$",'interpreter','latex');
ylabel("Im$(z)$",'interpreter','latex');
zlabel("$\log(|X(z)|)$",'interpreter','latex');
subplot(1,2,2);
mesh(x,y,angle(Xz));
xlabel("Re$(z)$",'interpreter','latex');
ylabel("Im$(z)$",'interpreter','latex');
zlabel("$\angle X(z)$",'interpreter','latex');

p = 1+1i;
Xz = 1./(1-(p./z));
figure(2);
sgtitle("$X(z) = \frac{1}{1-pz^{-1}},\,p = 1 + j$",'interpreter','latex');
subplot(1,2,1);
mesh(x,y,log(abs(Xz)));
xlabel("Re$(z)$",'interpreter','latex');
ylabel("Im$(z)$",'interpreter','latex');
zlabel("$\log(|X(z)|)$",'interpreter','latex');
subplot(1,2,2);
mesh(x,y,angle(Xz));
xlabel("Re$(z)$",'interpreter','latex');
ylabel("Im$(z)$",'interpreter','latex');
zlabel("$\angle X(z)$",'interpreter','latex');

%{
    ON plotting log(|X(z)|), we can easily identify the locations of poles
    and zeros of X(z). 
    
    Near poles, X(z) would tend to -inf or +inf. So, log(|X(z)|) would tend
    to +inf. So, poles are given by the locations with an upward kink.
    
    Near zeros, X(z) would tend to 0. So, log(|X(z)|) would tend to -nf.
    So, zeros are given by the locations with a downward kink.

    Using these facts, we can infer from the plots that,
        *   For p = 0.9, the pole is at z = 0.9 and the zero is at z = 0.
        *   For p = 1+j, the pole is at z = 1+j and the zero is at z = 0.
%}

%% PART B %%

p = 0.9;
b = [1 0]; % Coefficient vector of numerator of X(z)
a = [1 -p]; % Coefficient vector of numerator of X(z)
figure(3);
sgtitle("Pole-zero plot of $X(z) = \frac{1}{1-pz^{-1}}$ for for different values of $p$",'interpreter','latex');
subplot(1,2,1);
zplane(b,a); % Pole-zero plot
title("$p = 0.9$",'interpreter','latex');
xlabel("Re$(z)$",'interpreter','latex');
ylabel("Im$(z)$",'interpreter','latex');
legend("Zeros","Poles",'Location','southeast','interpreter','latex');
xlim([-2 2]);
ylim([-2 2]);

p = 1+1i;
b = [1 0]; % Coefficient vector of numerator of X(z)
a = [1 -p]; % Coefficient vector of numerator of X(z)
subplot(1,2,2);
zplane(b,a); % Pole-zero plot
title("$p = 1 + j$",'interpreter','latex');
xlabel("Re$(z)$",'interpreter','latex');
ylabel("Im$(z)$",'interpreter','latex');
legend("Zeros","Poles",'Location','southeast','interpreter','latex');
xlim([-2 2]);
ylim([-2 2]);

%{ 
    The pole-zero plots for both values of p are in line with the values
    found in part A.
%}

%% PART C %%

n = 1001;
p = 0.9;
b = [1 0]; % Coefficient vector of numerator of X(z)
a = [1 -p]; % Coefficient vector of numerator of X(z)
figure(4);
freqz(b,a,n); % Plot of frequency response of X(z)
title("Frequency response of $X(z) = \frac{1}{1-pz^{-1}}$ for $p = 0.9$",'interpreter','latex');

p = 1+1i;
b = [1 0]; % Coefficient vector of numerator of X(z)
a = [1 -p]; % Coefficient vector of numerator of X(z)
figure(5);
freqz(b,a,n); % Plot of frequency response of X(z)
title("Frequency response of $X(z) = \frac{1}{1-pz^{-1}}$ for $p = 1 + j$",'interpreter','latex');

%% PART D %%

n = 51;
p = 0.9;
b = [1 0]; % Coefficient vector of numerator of X(z)
a = [1 -p]; % Coefficient vector of numerator of X(z)
figure(6);
impz(b,a,n); % Plot of impulse response of X(z)
grid on;

p = 1+1i;
b = [1 0]; % Coefficient vector of numerator of X(z)
a = [1 -p]; % Coefficient vector of numerator of X(z)
figure(7);
impz(b,a,n); % Plot of impulse response of X(z)
sgtitle("Impulse response of $X(z) = \frac{1}{1-pz^{-1}}$ for $p = 1 + j$",'interpreter','latex');

%{
    For both values of p, X(z) has only one pole. So, there are 2 ROCs for both cases.
    So, there are 2 possible time-domain signals for the same X(z) in both cases (causal or anti-causal).
    From the plots of the impulse response, it is clear that impz() returns the time-domain 
    signal with ROC of the form |z|>r, i.e., a causal signal (x[n] = 0 for
    n < 0), where r is the magnitude of the pole.
%}

%% PART E %%

[x,y] = meshgrid(-1.5:0.01:1.5,-1.5:0.01:1.5);
z = x + 1i.*y;
r = 0.95;
theta = pi/3;
Xz = (z.^2 - 2.*cos(theta).*z + 1)./(z.^2 - 2.*r.*cos(theta).*z + r.^2);
figure(8);
sgtitle("$X(z) = \frac{z^2 - 2\cos \theta z + 1}{z^2 - 2r\cos \theta z + r^2},\, r = 0.95,\, \theta = \frac{\pi}{3}$",'interpreter','latex');
subplot(1,2,1);
mesh(x,y,log(abs(Xz)));
xlabel("Re$(z)$",'interpreter','latex');
ylabel("Im$(z)$",'interpreter','latex');
zlabel("$\log(|X(z)|)$",'interpreter','latex');
subplot(1,2,2);
mesh(x,y,angle(Xz));
xlabel("Re$(z)$",'interpreter','latex');
ylabel("Im$(z)$",'interpreter','latex');
zlabel("$\angle(X(z))$",'interpreter','latex');

%{
    ON plotting log(|X(z)|), we can easily identify the locations of poles
    and zeros of X(z). 
    
    Near poles, X(z) would tend to -inf or +inf. So, log(|X(z)|) would tend
    to +inf. So, poles are given by the locations with an upward kink.
    
    Near zeros, X(z) would tend to 0. So, log(|X(z)|) would tend to -nf.
    So, zeros are given by the locations with a downward kink.

    Using these facts, we can infer from the plots that for r = 0.95 and
    theta = pi/3, the zeros are at 1/2 + j*sqrt(3)/2 and 1/2 - j*sqrt(3)/2.
    The poles are at 0.95(1/2 + j*sqrt(3)/2) and 0.95(1/2 - j*sqrt(3)/2).
%}

b = [1 -2.*cos(theta) 1];
a = [1 -2.*r.*cos(theta) r.^2];
figure(9);
zplane(b,a); % Pole-zero plot
title("Pole-zero plot for $X(z) = \frac{z^2 - 2\cos \theta z + 1}{z^2 - 2r\cos \theta z + r^2},\, r = 0.95,\, \theta = \frac{\pi}{3}$",'interpreter','latex');
xlabel("Re$(z)$",'interpreter','latex');
ylabel("Im$(z)$",'interpreter','latex');
legend("Zeros","Poles",'Location','southeast','interpreter','latex');
xlim([-2 2]);
ylim([-2 2]);

%{ 
    The pole-zero plots are in line with the values
    found above.
%}

n = 1001;
figure(10);
freqz(b,a,n); % Plot of frequency response of X(z)
title("Frequency response of $X(z) = \frac{z^2 - 2\cos \theta z + 1}{z^2 - 2r\cos \theta z + r^2},\, r = 0.95,\, \theta = \frac{\pi}{3}$",'interpreter','latex');

n = 51;
figure(11);
impz(b,a,n); % Plot of impulse response of X(z)
grid on;

%{
    X(z) has two poles with equal magnitude. So, there are 2 ROCs for X(z).
    So, there are 2 possible time-domain signals for the same X(z)(causal or anti-causal).
    From the plots of the impulse response, it is clear that impz() returns the time-domain 
    signal with ROC of the form |z|>r, i.e., a causal signal (x[n] = 0 for n < 0),
    where r is the magnitude of the pole.
%}

%% PART F %%

%{  
    For r = 0.95 and theta = pi/3, the zeros are at 1/2 + j*sqrt(3)/2 and 1/2 - j*sqrt(3)/2.
    The poles are at 0.95(1/2 + j*sqrt(3)/2) and 0.95(1/2 - j*sqrt(3)/2).

    Using mathematical calculations we can infer that the zeros are at
    e^(j*theta) and e^(-j*theta). The poles are at re^(j*theta) and re^(-j*theta).
    So, |r| indicates the magnitude of the circle that splits the two ROCs.
    If a pole is of the form (x,y), then (rcos(theta), rsin(theta)) and
    (rcos(theta), -rsin(theta)) indicates the position of the poles in the
    pole-zero plot.
%}