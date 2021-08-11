% Question 1 %

% Given Parameters
A=[0.5 0.5]; %Amplitude of the sinusoids
fs=10000; %sampling frequency
P=zeros(1,length(A)); %phase angle
n=1:500;

%% Part A

td=4; %duration of the sound signal
F=[350 400]; %given frequencies

x1n=SineSum(A,F,P,td,fs); %constructing a vector that contains Sum of sinusoids of frequencies 350Hz and 440Hz
%Playing the sound signal (sum of sinusoids)
sound(x1n,fs);
pause(td);

%Plotting the sum of sinusoids of frequencies 350Hz and 440Hz
figure(1)
subplot(3,1,1);
plot(x1n(n));
title("Sum of sinusoids of frequencies $350$Hz and $440$Hz","interpreter","latex");
xlabel("$n$","interpreter","latex");
ylabel("$x_{1}[n]$","interpreter","latex");
grid on;

%% Part B

F_b1=[480 620]; %given frequencies
td=0.5;%duration of the sound signal

b1=SineSum(A,F_b1,P,td,fs); %constructing a vector that contains Sum of sinusoids of frequencies 480Hz and 620Hz
z1=zeros(1,length(b1)); % Our zero signal

% concatinating the pair b1 and z1 to get alternating signal of 0.5 duration each(repeated 4 times) 
xn2=[b1 z1 b1 z1 b1 z1 b1 z1]; 
% Playing the sound
sound(xn2,fs);
pause(td*8);

%Plotting the sum of sinusoids of frequencies 480Hz and 620Hz
subplot(3,1,2);
plot(xn2(n));
title("Alternating signal with sum of sinusoids of frequencies $480$Hz and $620$Hz and a zero signal","interpreter","latex");
xlabel("$n$","interpreter","latex");
ylabel("$x_{2}[n]$","interpreter","latex");
grid on;

%% PART C

F_b1=[440 480]; % given frequencies
td=2; %duration of the sound signal

b1=SineSum(A,F_b1,P,td,fs); % constructing a vector that contains Sum of sinusoids of frequencies 440Hz and 480Hz
z1=zeros(1,length(b1)); % Our zero signal

% concatinating the pair b1 and z1 to get alternating signal of 0.5 duration each(repeated 4 times) 
xn2=[b1 z1 b1 z1 b1 z1 b1 z1];
%Playing the sound signal (alternating beep)
sound(xn2,fs);
pause(td*2);

%Plotting the sum of sinusoids of frequencies 440Hz and 480Hz
subplot(3,1,3);
plot(xn2(n));
title("Alternating signal with sum of sinusoids of frequencies $440$Hz and $480$Hz and a zero signal","interpreter","latex");
xlabel("$n$","interpreter","latex");
ylabel("$x_{2}[n]$","interpreter","latex");
grid on;

%% Observations 
%% PART E
%{
-> Each of the above sound signals sound very familiar to a telephone dial
tone.
-> The first one sounds like a steady telephone dial tone without any pause
in between
-> The second one sounds like constant beep which we might hear when the
call has been disconnected. The signal goes on and off.
-> The third one sounds exactly like a telephone ringtone , it sounds
similar to the first one but with a pause in between.
%}


