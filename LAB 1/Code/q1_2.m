% Q1.2 %

% PART A %

time_grid=-0.5:0.01:0.5;
syms t;

% define relevant parameters
T = 1;
t1 = 0; % left limit is 0
t2 = 1; % right limit is 1
N = 5;

% define relevant expressions
x = 2 * cos(2*( pi) * time_grid) + cos(6 *(pi)*time_grid); % sum of cosines wave
xlt=2 * cos(2 *( pi) * t) + cos(6 *(pi)*t); % sum of cosines wave
F = fourierCoeff(t, xlt, T, t1, t2, N);
y=partialfouriersum(F,T,time_grid);

%Here x is the original function, and y is the reconstruction of x.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART B %

figure(1);
plot(time_grid,y,'r');

title("Reconstruction",'interpreter','latex');
xlabel("$-0.5 < t < 0.5$", 'interpreter', 'latex');
ylabel("$y(t)$", 'interpreter', 'latex');


F = fourierCoeff(t, xlt, T, t1, t2, N);
y=partialfouriersum(F,T,time_grid);


figure(2);
plot(time_grid,x);
title("Original function",'interpreter','latex');
xlabel("$-0.5 < t < 0.5$", 'interpreter', 'latex');
ylabel("$x(t)$", 'interpreter', 'latex');


figure(3);
hold on;
plot(time_grid,y,'r');
plot(time_grid,x,'b');
hold off;
title("Overlap to show error",'interpreter','latex');
xlabel("$-0.5 < t < 0.5$", 'interpreter', 'latex');
ylabel("x(t) and y(t)", 'interpreter', 'latex');
legend('Reconstruction','$2cos(2 \pi t) + cos(6 \pi t)$','interpreter', 'latex');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART C %

error=x-y;
%error is the difference between the original and reconstructed function

MAE=max(abs(error));
disp("Max absolute error is: ");
disp(MAE);

RMS=rms(error);
disp("root mean squared error is: ");
disp(RMS);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%