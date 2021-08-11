% Question 3 %

%%

fs = 10000;

%%

N = 5;
td = 1; % td = a+d+sd+r = 0.2+0.2+0.4+0.2 = 1 second
f0 = 100;


P = zeros(1,N);
A = zeros(1,N);
for k = 1:N
    A(k)=sin(k*pi/N);
end

% xn taken from question 2 with a_k = sin(k*pi/N);
xn = harmonics(A,f0,P,td,fs);

%%
%{
    ADSR envelope with -
        Attack duration a = 0.2 seconds
        Decay duration d = 0.2 seconds
        Sustain level s = 0.7
        Sustain duration sd = 0.4 seconds
        Release duration r = 0.2 seconds
    sampled at fs = 10000 Hz
%}
[t_env,env] = envelope(0.2,0.2,0.7,0.4,0.2,fs);
% Playing xn without ADSR envelope
soundsc(xn, fs);
pause(1.5);
% Playing xn with ADSR envelope
soundsc(xn.*env,fs);
pause(1.5);

%%

%Plotting xn, ADSR envelope and ADSR envelope applied to xn.
figure(3);
subplot(3,1,1);
plot(t_env,xn);
title("Original waveform",'interpreter','latex');
xlabel("$0<=t<=1$",'interpreter','latex');
ylim([-3 3]);

subplot(3,1,2);
plot(t_env,env);
title("ADSR envelope",'interpreter','latex');
xlabel("$0<=t<=1$",'interpreter','latex');

subplot(3,1,3);
plot(t_env,xn.*env);
title("Original waveform with ADSR envelope applied",'interpreter','latex');
xlabel("$0<=t<=1$",'interpreter','latex');
ylim([-3 3]);

%%
%{
    Another ADSR envelope with -
        Attack duration a = 0.5 seconds
        Decay duration d = 0.1 seconds
        Sustain level s = 0.4
        Sustain duration sd = 0.1 seconds
        Release duration r = 0.3 seconds
    sampled at fs = 10000 Hz
%}
a = 0.5;
d = 0.1;
s = 0.4;
sd = 0.1;
r = 0.3;
[t_env, env] = envelope(a,d,s,sd,r,fs);

% td remains the same here for xn as td = a+d+sd+r = 0.5+0.1+0.1+0.3 = 1 second
% Playing xn without ADSR envelope
soundsc(xn, fs);
pause(1.5);
% Playing xn with ADSR envelope
soundsc(xn.*env,fs);
% Here, as expected, the sound is different when the envelope parameters
% are changed.

%%
%{
    Since we multiply xn with the ADSR envelope signal, the loudness of the
    sound are different times changes. 
    
    The loudness level linearly increases and is maximum at 'a' seconds, 
    and then linearly decays to the sustain level 's' at 'a+d' seconds.
    Then, the sustain level is held for 'sd' seconds till 'a+d+sd' seconds.
    Then, it is 'released' linearly until the level becomes zero in 'r'
    seconds at 'a+d+sd+r' seconds.
%}