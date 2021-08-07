%% Question 1 %%

%% PART A %%

%{
    Fourier transform (CTFT) P(w) of p(t) = cos(w0*t) is
    pi*[delta(w-w0)+delta(w+w0)], where delta(w) is the dirac delta
    function.

%}

%% PART B %%

%{  
    As per the question, p[n] = p(nTs) = cos(w0*nTs). Let r0=w0*Ts.
    Fourier transform (DTFT) P(e^jw) of p[n] = p(nTs) is
    pi*summation{k=-inf to inf}(delta[w-r0-2pi*k]+delta[w+r0-2pi*k]), 
    where delta[w] is the unit impulse function.
%}

%% PART C %%

%{
    We can see from A and B that the location of impulses of P(e^jw) is
    just the location of impulses of P(w) and is repeated and is periodic with 2pi.
%}

%% PART D %%

%{  
    As per the question, p[n] = p(nTs) = cos(w0*nTs). Let r0=w0*Ts.
    Multiplication in time domain is equivalent to convolution in the
    frequency domain. So, X(e^jw) = DTFT(p[n]w[n]) = (1/2pi)(P(e^jw)*W(e^jw).
    
    Here, DTFT W(e^jw) of rectangular window w[n] = V(e^jw)e^(-jw(L-1)/2)
    (Time shift property) Where V(e^jw) = sin(wL/2)/sin(w/2) is the DTFT 
    of a discrete time rectangular pulse centered at the origin.
    
    So, W(e^jw) = (1/2)*summation{k=-inf to inf}(delta[w-r0-2pi*k]+delta[w+r0-2pi*k])*sin(wL/2)/sin(w/2)
    => W(e^jw) = (1/2)*summation{k=-inf to inf}(W(e^j(w-r0-2pi*k))+W(e^j(w+r0-2pi*k))
    => W(e^jw) = (1/2)*[W(w-r0)+w(w+r0)], repeated periodically with 2pi interval,
    => W(e^jw) = (1/2)*[W(w-w0*Ts)+w(w+w0*Ts)], repeated periodically with 2pi interval,
     where W(w) = (sin(wL/2)/sin(w/2))*e^(-jw(L-1)/2).
  
%}

%% PART E %%

fs = 64; % Sampling frequency (Greater than Nyquist rate)
Ts = 1/fs; % Sampling interval
t = 0:Ts:2000*Ts;
f0 = 12;
w0 = 2*pi*f0;
pt = cos(w0*t); % p(t)

pn = pt; % p[n] = p(nTs)

n = 0:2000;
L = 16; % Here, L is fixed
wn = 1*(0<=n & n<=L-1); % Rectangular window

xn = pn.*wn; % Multipyling p[n] with w[n] to get finite number of samples

N = 1*L; 
X = fft(xn,N); % N-point DFT of x[n]
figure(1);
sgtitle("Magnitude of DFT for fixed L",'interpreter','latex');
subplot(2,2,1);
stem((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 16,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

N = 2*L;
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,2);
stem((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 32,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

N = 4*L;
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,3);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 64,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

N = 8*L;
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,4);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 128,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

%{
    The plots are consistent with the DTFT of X(e^jw), but limited to one
    time period and sampled from 0 to N-1. If k is the location of each
    sample, then X[k] corrosponds to DTFT of X(e^jw) at w = 2pi*k/N;
    
    However, the plots are not consistent with that of P(e^jw). The
    spectrum is spread out over the whole frequency range instead of being
    concentrated at w0*Ts and 2pi-w0*Ts. So, spectral leakage has occured on
    limiting the original signal to a finite sequence by multiplying with
    a rectangular window.
%}

%% PART F %%

% Here, L is varying
L = 16;
N = 8*L;
wn = 1*(0<=n & n<=L-1); % Rectangular window
xn = pn.*wn; % Multipyling p[n] with w[n] to get finite number of samples
X = fft(xn,N); % N-point DFT of x[n]
figure(2);
sgtitle("Magnitude of DFT for varying L",'interpreter','latex');
subplot(2,2,1);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 128,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

L = 32;
N = 8*L;
wn = 1*(0<=n & n<=L-1); % Rectangular window
xn = pn.*wn; % Multipyling p[n] with w[n] to get finite number of samples
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,2);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 256,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

L = 64;
N = 8*L;
wn = 1*(0<=n & n<=L-1); % Rectangular window
xn = pn.*wn; % Multipyling p[n] with w[n] to get finite number of samples
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,3);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 512,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

L = 128;
N = 8*L;
wn = 1*(0<=n & n<=L-1); % Rectangular window
xn = pn.*wn; % Multipyling p[n] with w[n] to get finite number of samples
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,4);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 1024,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

%{
    Here, on increasing L, N also increases. So the number of samples of
    the DFT increases. So, as L increases, the DFT approaches the DTFT
    of the original signal p[n] with samples spaced 2pi/N apart.
    Also, due to increase in the number of samples, the frequency resolution increases.

    So, as L increases, frequency resolution increases.

%}

%% PART G %%

f0 = 11;
w0 = 2*pi*f0;
pt = cos(w0*t);

pn = pt; % p[n] = p(nTs)

L = 16;
wn = 1*(0<=n & n<=L-1); % Rectangular window

xn = pn.*wn; % Multipyling p[n] with w[n] to get finite number of samples

N = 1*L;
X = fft(xn,N); % N-point DFT of x[n]
figure(3);
sgtitle("Magnitude of DFT for fixed L",'interpreter','latex');
subplot(2,2,1);
stem((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 16,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

N = 2*L;
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,2);
stem((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 32,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

N = 4*L;
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,3);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 64,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

N = 8*L;
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,4);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 128,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

%{
    The plots are consistent with the DTFT of X(e^jw), but limited to one
    time period and sampled from 0 to N-1. If k is the location of each
    sample, then X[k] corrosponds to DTFT of X(e^jw) at w = 2pi*k/N;
    
    However, the plots are not consistent with that of P(e^jw). The
    spectrum is spread out over the whole frequency range instead of being
    concentrated at w0*Ts and 2pi-w0*Ts. So, spectral leakage has occured on
    limiting the original signal to a finite sequence. by multiplying with
    a rectangular window.

%}

%% PART H %%

f0 = 12;
w0 = 2*pi*f0;
pt = cos(w0*t);

pn = pt; % p[n] = p(nTs)

L = 16;
wn = hann(L); % Hanning window
wn = transpose(wn); 

xn = pn(1:L).*wn; % Multipyling p[n] with w[n] to get finite number of samples

N = 1*L;
X = fft(xn,N); % N-point DFT of x[n]
figure(4);
sgtitle("Magnitude of DFT for fixed L,\, using Hanning window",'interpreter','latex');
subplot(2,2,1);
stem((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 16,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');


N = 2*L;
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,2);
stem((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 32,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');


N = 4*L;
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,3);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 64,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');


N = 8*L;
X = fft(xn,N); % N-point DFT of x[n]
subplot(2,2,4);
plot((0:N-1),abs(X)); % Magnitude of DFT
grid on;
xlim([0 N-1]);
title("$N = 128,\,L = 16$",'interpreter','latex');
xlabel("$0 <= k <= N-1$",'interpreter','latex');
ylabel("$|X[k]|$",'interpreter','latex');

%{
    Here, on using the Hanning window, we can see that the main lobe (lobes near r0 and 2pi-r0) 
    width has increased in comparision with the rectangular window. However, comparatively, 
    the spectral leakage has reduced. But, due to the increase in main lobe width, 
    the frequency resolution has decreased.

%}

%% PART I %%

%{
    We can estimate f0 given fs. Consider that k < N/2 is the location of
    the maxima of the main lobe of X[k]. Then, we can see that k, f0, fs and N are
    related. 

    f0 is approximately equal to k*fs/N (As N affects the resolution).
    
    For Part E,

        *   For N = 16, L = 16, k = 3 and so f0 = 3*64/16 = 12
        *   For N = 32, L = 16, k = 6 and so f0 = 6*64/32 = 12
        *   For N = 64, L = 16, k = 12 and so f0 = 12*64/64 = 12
        *   For N = 128, L = 16, k = 24 and so f0 = 24*64/128 = 12

    So, the readings of f0 are fairly accurate. 

    For Part G,

        *   For N = 16, L = 16, k = 3 and so f0 = 3*64/16 = 12
        *   For N = 32, L = 16, k = 6 and so f0 = 5*64/32 = 10
        *   For N = 64, L = 16, k = 12 and so f0 = 11*64/64 = 11
        *   For N = 128, L = 16, k = 24 and so f0 = 22*64/128 = 11
    
    The readings are slightly off for lower values of N but on increasing the 
    value of N, the resolution increases and the readings of f0 are more accurate.

    For Part H,

        *   For N = 16, L = 16, k = 3 and so f0 = 3*64/16 = 12
        *   For N = 32, L = 16, k = 6 and so f0 = 6*64/32 = 12
        *   For N = 64, L = 16, k = 12 and so f0 = 12*64/64 = 12
        *   For N = 128, L = 16, k = 24 and so f0 = 24*64/128 = 12

    So, the readings of f0 are fairly accurate.

    So, from the readings of E,G,H, we can infer that N does affect the
    accuracy of the answer. As N increases, the frequency resolution
    increases and the accuracy of our answer increases.

%}
    
%% PART J %%

[y,Fs] = audioread("01.wav"); % Fs is the sampling frequency of the audio file
ylen = length(y);
Y = fft(y(:,1),ylen); % DFT of y

figure(5);
plot((0:(ylen-1)),abs(Y));
grid on;
sgtitle("Magnitude of DFT of audio file",'interpreter','latex');
xlabel("$k$",'interpreter','latex');
ylabel("$|Y[k]|$",'interpreter','latex');

%{
    Here Fs = 44100 is the sampling frequency and N is equal to 67936.
    From the plots, it is evident that the value of |X[k]| is maximum at k = 683,
    the second most highest value at k = 1370 and the third most highest
    value at k = 2066.

    So, the 3 strongest frequencies present in the given audio signal are
    f0 = 683*44100/67936 = 443.36 Hz
    f0 = 1370*44100/67936 = 889.32 Hz
    and f0 = 2066*44100/67936 = 1341.12 Hz, decreasing in that order.

%}