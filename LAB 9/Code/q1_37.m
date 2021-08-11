%% Question 1

%{
    HLPF(e^jw) corrosponds to an impulse respose hlpf[n] =
    sin((pi/6)n)/(pi*n). Since Hd(e^jw) = e^(-jwnc)HLPF(e^jw), by time
    shift property of DTFT, hd[n] = hlpf[n-nc].
%}

%% PART A

N = 51;
n = 0:N-1;
nc = (N-1)/2;
hlpf = zeros(1,length(n));
hd = zeros(1,length(n));

for nn = n
    if(nn~=0)
        hlpf(nn+1) = sin(pi.*nn/6)./(pi.*nn);
    else
        hlpf(nn+1) = 1/6; % Case when denominator is zero.
    end
end

% hd[n] = h[n-nc]
for nn = n
    if(nn~=nc)
        hd(nn+1) = sin(pi.*(nn-nc)/6)./(pi.*(nn-nc));
    else
        hd(nn+1) = 1/6; % Case when denominator is zero.
    end
end
        
wn = 1*(0<=n&n<=N-1); % Rectangular window of length N
hn = hd.*wn; % N-tap filter % N-tap filter

fprintf("\nCoefficients of h[n] are:\n\n");
for nn = 1:51
    fprintf("   h[%d] = %f\n", nn-1, hn(nn));
end

%% PART B

H = fft(hn,1001);
figure(1);
sgtitle("$h[n] = h_d[n]w[n]$, $w[n]$ is a rectangular window",'interpreter','latex');
subplot(3,1,1);
stem(n,hn);
grid on;
xlabel("$0 <= n <= 50$",'interpreter','latex');
ylabel("$h[n]$",'interpreter','latex');
subplot(3,1,2);
plot(0:1000,mag2db(abs(H)/max(abs(H))));
grid on;
xlabel("$0 <= n <= 1000$",'interpreter','latex');
ylabel("Normalized magnitude (dB) of $H(e^{jw})$",'interpreter','latex');
ylim([-160 10]);
subplot(3,1,3);
plot(0:1000,angle(H));
grid on;
xlabel("$0 <= n <= 1000$",'interpreter','latex');
ylabel("Phase (radians) of $H(e^{jw})$",'interpreter','latex');

%% PART C

wn = blackman(N); % Blackman window of length N
wn = transpose(wn);
hn = hd.*wn; % N-tap filter

H = fft(hn,1001);
figure(2);
sgtitle("$h[n] = h_d[n]w[n]$, $w[n]$ is a Blackman window",'interpreter','latex');
subplot(3,1,1);
stem(n,hn);
grid on;
xlabel("$0 <= n <= 50$",'interpreter','latex');
ylabel("$h[n]$",'interpreter','latex');
subplot(3,1,2);
plot(0:1000,mag2db(abs(H)/max(abs(H))));
grid on;
xlabel("$0 <= n <= 1000$",'interpreter','latex');
ylabel("Normalized magnitude (dB) of $H(e^{jw})$",'interpreter','latex');
ylim([-160 10]);
subplot(3,1,3);
plot(0:1000,angle(H));
grid on;
xlabel("$0 <= n <= 1000$",'interpreter','latex');
ylabel("Phase (radians) of $H(e^{jw})$",'interpreter','latex');

%% PART D

%{
    From the plots, we can see that the Blackman window produces lesser
    amplitude for the side lobes, i.e, side lobe compression is more when
    using Blackman window than when using rectangular window.
    
    However, the transition band of the rectangular window appears to be
    shorter than when using Blackman window.
    
%}

%% PART E

m = 0:200;
xn = cos(pi.*m/16)+0.25*sin(pi.*m/2);
figure(3);
sgtitle("$x[n] = \cos(\frac{\pi}{6}n) + 0.25\sin(\frac{\pi}{2}n)$",'interpreter','latex');
subplot(3,1,1);
stem(m,xn);
grid on;
xlabel("$0 <= n <= 200$",'interpreter','latex');
ylabel("$x[n]$",'interpreter','latex');

wn = 1*(0<=n&n<=N-1); % Rectangular window of length N
hn = hd.*wn; % N-tap filter
yn = conv(xn,hn);
subplot(3,1,2);
stem(0:250,yn);
grid on;
xlabel("$0 <= n <= 250$",'interpreter','latex');
ylabel("Filtered signal (rectangular)",'interpreter','latex');

% Higher than cutoff frequency sin(pi.*n/2) is filtered out to a good extent in both cases.

wn = blackman(N); % Blackman window of length N
wn = transpose(wn);
hn = hd.*wn; % N-tap filter
yn = conv(xn,hn);
subplot(3,1,3);
stem(0:250,yn);
grid on;
xlabel("$0 <= n <= 250$",'interpreter','latex');
ylabel("Filtered signal (Blackman)",'interpreter','latex');

x1n = cos(pi.*m/16)+0.25*randn(1,201);
figure(4);
sgtitle("$x_1[n] = \cos(\frac{\pi}{6}n)$ + 0.25randn(1,201)",'interpreter','latex');
subplot(3,1,1);
stem(m,x1n);
grid on;
xlabel("$0 <= n <= 200$",'interpreter','latex');
ylabel("$x[n]$",'interpreter','latex');

wn = 1*(0<=n&n<=N-1); % Rectangular window of length N
hn = hd.*wn; % N-tap filter
y1n = conv(x1n,hn);
subplot(3,1,2);
stem(0:250,y1n);
grid on;
xlabel("$0 <= n <= 250$",'interpreter','latex');
ylabel("Filtered signal $y_1[n]$ (rectangular)",'interpreter','latex');

wn = blackman(N); % Blackman window of length N
wn = transpose(wn);
hn = hd.*wn; % N-tap filter
y1n = conv(x1n,hn);
subplot(3,1,3);
stem(0:250,y1n);
grid on;
xlabel("$0 <= n <= 250$",'interpreter','latex');
ylabel("Filtered signal (Blackman)",'interpreter','latex');

% High frequency noise is filtered out to a good extent in both cases.

%% PART F

wn = 1*(0<=n&n<=N-1); % Rectangular window of length N
hn = hd.*wn; % N-tap filter
h1n = (-1).^n.*hn;

H1 = fft(h1n,1001);
figure(5);
subplot(3,1,1);
stem(n,h1n);
grid on;
xlabel("$0 <= n <= 50$",'interpreter','latex');
ylabel("$h_1[n]$",'interpreter','latex');

subplot(3,1,2);
plot(0:1000,mag2db(abs(H1)/max(abs(H1))));
grid on;
xlabel("$0 <= n <= 1000$",'interpreter','latex');
ylabel("Normalized magnitude (dB) of $H_1(e^{jw})$",'interpreter','latex');
ylim([-160 10]);

subplot(3,1,3);
plot(0:1000,angle(H1));
grid on;
xlabel("$0 <= n <= 1000$",'interpreter','latex');
ylabel("Phase (radians) of $H_1(e^{jw})$",'interpreter','latex');

% h1[n] corrosponds to a non-ideal high pass filter, with a cutoff
% frequency of approximately 5pi/6.
