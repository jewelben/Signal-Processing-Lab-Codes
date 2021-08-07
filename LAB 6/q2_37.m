% Question 2 %

%% PART A %%

N = 5;
fs = 10000;
td = 1;
f0 = 50;

P = zeros(1,N); % All phases are set to zero
A = zeros(1,N);
for k = 1:N
    A(k)=1/k;
end

% a_k = 1/k;
% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
% Playing the sound
soundsc(xn,fs);
pause(1.5);

%% PART B %%

for k = 1:N
    A(k)=1/(k.*k);
end
% a_k = 1/(k^2);
% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
% Playing the sound
soundsc(xn,fs);
pause(1.5);

%% PART C %%

% Using a_k = 1/k and 1/(k^2) for various combinations of N and f0
for nn=10:5:15
    P = zeros(1,nn);
    A = zeros(1,nn);
    for ff0=100:50:200
        for k = 1:nn
            A(k)=1/k;
        end
        % xn is a combination of weighted sinusoids of fundamental frequency f0
        xn = harmonics(A,ff0,P,td,fs);
        % Playing the sound
        soundsc(xn,fs);
        pause(1.5);
        
        for k = 1:nn
            A(k)=1/(k.*k);
        end
        % xn is a combination of weighted sinusoids of fundamental frequency f0
        xn = harmonics(A,ff0,P,td,fs);
        % Playing the sound
        soundsc(xn,fs);
        pause(1.5);
        
    end
end

%% PART D %%

N = 5;
f0 = 50;
P = zeros(1,N);
A = zeros(1,N);

for k = 1:N
    A(k)=sin(pi*k/N);
end

% a_k = sin(pi*k/N);
% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
% Playing the sound
soundsc(xn,fs);
pause(1.5);

for k = 1:N
    A(k)=cos(pi*k/N);
end

% a_k = cos(pi*k/N);
% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
% Playing the sound
soundsc(xn,fs);
pause(1.5);

for k = 1:N
    A(k)=k;
end

% a_k = k;
% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
% Playing the sound
soundsc(xn,fs);

%% PART E %%

N = 5;
f0 = 50;
P = zeros(1,N);
A = zeros(1,N);

% Fixed N and f0 and varying a_k
figure(1);
sgtitle("Plotting signal for $N = 5$, $f_0 = 50 Hz$",'interpreter','latex');
for k = 1:N
    A(k)=1/k;
end

% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
subplot(5,1,1);
stem(xn);

xlim([1 500]);
ylim([-2 2]);
ylabel("$x[n]$",'interpreter','latex');
title("$a_k = \frac{1}{k}$",'interpreter','latex');

for k = 1:N
    A(k)=1/(k.*k);
end
% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
subplot(5,1,2);
stem(xn);

xlim([1 500]);
ylim([-1.4 1.4]);
ylabel("$x[n]$",'interpreter','latex');
title("$a_k = \frac{1}{k^2}$",'interpreter','latex');

for k = 1:N
    A(k)=sin(pi*k/N);
end
% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
subplot(5,1,3);
stem(xn);

xlim([1 500]);
ylim([-3 3]);
ylabel("$x[n]$",'interpreter','latex');
title("$a_k = sin(\frac{\pi k}{N})$",'interpreter','latex');

for k = 1:N
    A(k)=cos(pi*k/N);
end
% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
subplot(5,1,4);
stem(xn);

xlim([1 500]);
ylim([-3 3]);
ylabel("$x[n]$",'interpreter','latex');
title("$a_k = cos(\frac{\pi k}{N})$",'interpreter','latex');

for k = 1:N
    A(k)=k;
end
% xn is a combination of weighted sinusoids of fundamental frequency f0
xn = harmonics(A,f0,P,td,fs);
subplot(5,1,5);
stem(xn);

xlim([1 500]);
ylim([-20 20]);
ylabel("$x[n]$",'interpreter','latex');
title("$a_k = k$",'interpreter','latex');

%{
     We can observe that as N increases, the amplitude of all the given
     waveforms increase.

     For a_k = 1/k, as N increases, the waveform becomes more closer to a
     sawtooth waveform.

     As f0 increases, the pitch of all the waveforms increase as expected.
    
     The waveforms are all different for various values of a_k.
     
     a_k = 1/(k^2) seems to be the smoothest in terms of change of value of
     xn.

     For different a_k and fixed f0 and N, the waveforms sound different as
     expected.
%}