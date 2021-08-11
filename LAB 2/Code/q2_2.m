%{
    The FS coefficients of the output of the LTI system is
    (a_k)H(kw0) for the corrosponding values of k of the input signal
    
    The output of the LTI system is periodic when the input signal is
    periodic

%}
     
% PART B (LPF)%

w0_FS = 1;
T = 2 * pi;
t = -2*T:0.01:2*T;
wc = 2; %Cutoff frequency of the filter
A = [0.5; 0; 0.5];
%{ 
    For cos(t), the FS coeffiecients are
    a_k = 0.5, k = 1, -1;
    a_k = 0, k != 1, -1;

 %}

x = partialfouriersum(A, T, t); %Here, x = cos(t)

B = myLPF(A, w0_FS, wc);  
% Calculating the FS coefficients of the signal produced by passing 
% x through the low pass filter

y = partialfouriersum(B, T, t);
% Reconstructing the resultant signal for plotting

figure(1);
subplot(2, 2, 1);
plot(t, x);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$x(t)$", 'interpreter', 'latex');
title("Original signal $x(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, y, 'R');
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$y(t)$", 'interpreter', 'latex');
title("Resultant signal $y(t)$ after $x(t)$ is passed through the low pass filter", 'interpreter', 'latex');

subplot(2, 2, [3 4]);
hold on;
plot(t, x);
plot(t, y);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
legend('$x(t)$','$y(t)$','interpreter', 'latex');
% Here, wc (= 2) is greater than the absolute value of all angular frequencies present in the FS representation
% of x(t) = cos(t). Hence, the entire input signal is the same as the output signal.
hold off;
sgtitle("Low pass filter with $\omega_c = 2$ and $cos(t)$ as input", 'interpreter', 'latex');

wc = 0.5;
% Here, wc is less than the absolute value of all angular frequencies present in the FS representation
% of x(t) = cos(t). Hence, the entire input signal is attenuated to 0.

B = myLPF(A, w0_FS, wc);  
% Calculating the FS coefficients of the signal produced by passing 
% x through the low pass filter

y = partialfouriersum(B, T, t);
% Reconstructing the resultant signal for plotting

figure(2);

subplot(2, 2, 1);
plot(t, x); %x(t) = y(t) here
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$x(t)$", 'interpreter', 'latex');
title("Original signal $x(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, y, 'R');
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$y(t)$", 'interpreter', 'latex');
title("Resultant signal $y(t)$ after $x(t)$ is passed through the low pass filter", 'interpreter', 'latex');

subplot(2, 2, [3 4]);
hold on;
plot(t, x);
plot(t, y);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
legend('$x(t)$','$y(t)$','interpreter', 'latex');
hold off;
sgtitle("Low pass filter with $\omega_c = 0.5$ and $cos(t)$ as input", 'interpreter', 'latex');

% Here, wc ( = 0.5) is less than the absolute value of all angular frequencies present in the FS representation
% of x(t) = cos(t). Hence, the entire input signal is attenuated to 0.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART C (HPF) %

w0_FS = 1;
T = 2 * pi;
t = -2*T:0.01:2*T;
wc = 2; %Cutoff frequency of the filter
A = [0.5; 0; 0.5];
%{ 
    For cos(t), the FS coeffiecients are
    a_k = 0.5, k = 1, -1;
    a_k = 0, k != 1, -1;

 %}

x = partialfouriersum(A, T, t); %Here, x = cos(t)

B = myHPF(A, w0_FS, wc);  
% Calculating the FS coefficients of the signal produced by passing 
% x through the high pass filter

y = partialfouriersum(B, T, t);
% Reconstructing the resultant signal for plotting

figure(3);
subplot(2, 2, 1);
plot(t, x);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$x(t)$", 'interpreter', 'latex');
title("Original signal $x(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, y, 'R');
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$y(t)$", 'interpreter', 'latex');
title("Resultant signal $y(t)$ after $x(t)$ is passed through the high pass filter", 'interpreter', 'latex');
% Here, wc (= 2) is greater than the absolute value of all angular frequencies present in the FS representation
% of x(t) = cos(t). Hence, the entire input signal is attenuated to 0.

subplot(2, 2, [3 4]);
hold on;
plot(t, x);
plot(t, y);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
legend('$x(t)$','$y(t)$','interpreter', 'latex');
hold off;
sgtitle("High pass filter with $\omega_c = 2$ and $cos(t)$ as input", 'interpreter', 'latex');

wc = 0.5;
% Here, wc (= 0.5) is less than the absolute value of all angular frequencies present in the FS representation
% of x(t) = cos(t). Hence, the entire input signal is the same as the output signal.

B = myHPF(A, w0_FS, wc);  
% Calculating the FS coefficients of the signal produced by passing 
% x through the high pass filter

y = partialfouriersum(B, T, t);
% Reconstructing the resultant signal for plotting

figure(4);

subplot(2, 2, 1);
plot(t, x);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$x(t)$", 'interpreter', 'latex');
title("Original signal $x(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, y, 'R'); %x(t) = y(t) here
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$y(t)$", 'interpreter', 'latex');
title("Resultant signal $y(t)$ after $x(t)$ is passed through the high pass filter", 'interpreter', 'latex');

subplot(2, 2, [3 4]);
hold on;
plot(t, x);
plot(t, y);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
legend('$x(t)$','$y(t)$','interpreter', 'latex');
hold off;
sgtitle("High pass filter with $\omega_c = 0.5$ and $cos(t)$ as input", 'interpreter', 'latex');

% Here, wc (= 0.5) is less than the absolute value of all angular frequencies present in the FS representation
% of x(t) = cos(t). Hence, the entire input signal is the same as the output signal.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART D(Non-ideal filter) %

w0_FS = 1;
T = 2 * pi;
t = -2*T:0.01:2*T;
G = 1;
a = 1;
A = [0.5; 0; 0.5];
%{ 
    For cos(t), the FS coeffiecients are
    a_k = 0.5, k = 1, -1;
    a_k = 0, k != 1, -1;

 %}

x = partialfouriersum(A, T, t); %Here, x = cos(t)

B = NonIdeal(A, w0_FS, G, a);  
% Calculating the FS coefficients of the signal produced by passing 
% x through the non ideal filter

y = partialfouriersum(B, T, t);
% Reconstructing the resultant signal for plotting

figure(5);
subplot(2, 2, 1);
plot(t, x);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$x(t)$", 'interpreter', 'latex');
title("Original signal $x(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, y, 'R');
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$y(t)$", 'interpreter', 'latex');
title("Resultant signal $y(t)$ after $x(t)$ is passed through the non-ideal filter", 'interpreter', 'latex');

subplot(2, 2, [3 4]);
hold on;
plot(t, x);
plot(t, y);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
legend('$x(t)$','$y(t)$','interpreter', 'latex');
hold off;
sgtitle("Non-ideal filter with $G = 1, a = 1$ and $cos(t)$ as input", 'interpreter', 'latex');


% The given non-ideal filter gives a time shifted scaled output.
% For G = 1, a = 1; the filter produces a scaled down and 
% time shifted (to the right by about 0.8 units) output.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART E %

w0_FS = 1; %w_0 and T are 1 and 2 * pi respectively for PART E 
T = 2 * pi;
t = -2*T:0.01:2*T;

wc = 2.5; %Cutoff frequency of the filter
A = [0.5; -0.5 / 1i; 0; 0; 0; 0.5 / 1i; 0.5];
G = 1;
a = 1;

x = partialfouriersum(A, T, t); %Here, x = sin(2t) + cos(3t)

B = myLPF(A, w0_FS, wc);  
% Calculating the FS coefficients of the signal produced by passing 
% x through the low pass filter

y = partialfouriersum(B, T, t);
% Reconstructing the resultant signal for plotting

figure(6);
subplot(2, 2, 1);
plot(t, x);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$x(t)$", 'interpreter', 'latex');
title("Original signal $x(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, y, 'R');
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$y(t)$", 'interpreter', 'latex');
title("Resultant signal $y(t)$ after $x(t)$ is passed through the low pass filter", 'interpreter', 'latex');

subplot(2, 2, [3 4]);
hold on;
plot(t, x);
plot(t, y);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
legend('$x(t)$','$y(t)$','interpreter', 'latex');
hold off;
sgtitle("Low pass filter with $\omega_c = 2.5$ and $sin(2t) + cos(3t)$ as input", 'interpreter', 'latex');

B = myHPF(A, w0_FS, wc);  
% Calculating the FS coefficients of the signal produced by passing 
% x through the high pass filter

y = partialfouriersum(B, T, t);
% Reconstructing the resultant signal for plotting

figure(7);
subplot(2, 2, 1);
plot(t, x);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$x(t)$", 'interpreter', 'latex');
title("Original signal $x(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, y, 'R');
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$y(t)$", 'interpreter', 'latex');
title("Resultant signal $y(t)$ after $x(t)$ is passed through the high pass filter", 'interpreter', 'latex');

subplot(2, 2, [3 4]);
hold on;
plot(t, x);
plot(t, y);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
legend('$x(t)$','$y(t)$','interpreter', 'latex');
hold off;
sgtitle("High pass filter with $\omega_c = 2.5$ and $sin(2t) + cos(3t)$ as input", 'interpreter', 'latex');

B = NonIdeal(A, w0_FS, G, a);  
% Calculating the FS coefficients of the signal produced by passing 
% x through the non-ideal filter

y = partialfouriersum(B, T, t);
% Reconstructing the resultant signal for plotting

figure(8);
subplot(2, 2, 1);
plot(t, x);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$x(t)$", 'interpreter', 'latex');
title("Original signal $x(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, y, 'R');
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
ylabel("$y(t)$", 'interpreter', 'latex');
title("Resultant signal $y(t)$ after $x(t)$ is passed through the non-ideal filter", 'interpreter', 'latex');

subplot(2, 2, [3 4]);
hold on;
plot(t, x);
plot(t, y);
xlabel("$-4\pi < t < 4\pi$", 'interpreter', 'latex');
legend('$x(t)$','$y(t)$','interpreter', 'latex');
hold off;
sgtitle("Non-ideal filter with $G = 1, a = 1$ and $sin(2t) + cos(3t)$ as input", 'interpreter', 'latex');


%{
    For PART E, the low pass filter outputs only sin(2t) as this is the
    only non-zero part of the FS expansion of the input signal with  absolute value of 
    frequency less than wc = 2.5.

    For PART E, the high pass filter outputs only cos(3t) as this is the
    only non-zero part of the FS expansion of the input signal with absolute value of 
    frequency greater than wc =
    2.5.

    The given non-ideal filter gives a time shifted scaled output.
    For G = 1, a = 1; the filter produces a scaled down and 
    time shifted (to the right by about 0.5 units) output.
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
