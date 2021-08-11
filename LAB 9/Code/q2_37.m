% Question 9.2 %

%Given parameters
n=2001; % Number of points in our frequency response
w_0=pi/4; % frequency at which frequency response is 0

%% PART A (FIR FILTER)
% Given H(1)=1 

a_1=1; %coefficients of z^-i in the denomintor, i=0
b_0_1=1/(2-sqrt(2)); % gain factor for H(1)=1
b_1=[b_0_1 -b_0_1*sqrt(2) b_0_1]; %coefficients of z^-i in the numermator, 0<=i<=2
%Plotting the frequency response when w_0=π/4
figure(1);
freqz(b_1,a_1,n);

%% PART B (IIR FILTER)
% Given H(1)=1

r_0=0.9; %magnitude of our poles
a_2=[1 -r_0*(exp(1i*w_0)+exp(-1i*w_0)) r_0*r_0]; %coefficients of z^-i in the denomintor,0<=i<=2
b_0_2=1+(2*r_0*r_0)-(r_0*sqrt(2))/(2-sqrt(2)); % gain factor for H(1)=1
b_2=[b_0_2 -b_0_2*sqrt(2) b_0_2]; %coefficients of z^-i in the numermator, 0<=i<=2
%Plotting the frequency response when notch is located at w_0=π/4 and
%r0=0.9
figure(2);
freqz(b_2,a_2,n);

%% PART D
%Using fvtool to visualize and plot the magnitude, impulse, phase response
% along with the pole zero plot of the FIR and IIR filter of Q9.2(a) and
% Q9.2(b)
fvtool(b_1,a_1);
fvtool(b_2,a_2);

%Observations at the end
%% PART E

load handel.mat %laoding the audio file "handel"

% Using audio write to create a .wav file
filename= 'handel.wav';
audiowrite(filename,y,Fs);
clear y Fs
% using audioread to find the sampling frequency and obtaining the signal
% vector y
[y,Fs]=audioread(filename);

% sound(y,Fs); %Uncomment to listen to handle.wav

f_0=1024; %Given parameters 
t=0:1/Fs:(length(y)-1)/Fs; %defining the time parameter for the sin wave 
% to be added (same duration as handel)

s=sin(2*pi*f_0*t);% Defining our sinusoidal signal
y_1=y+s'; % Modified signal (handel.wav+sinusoid signal)
% sound(y_2,Fs); %Uncomment to listen to our modified signal

% Running the modified signal through our FIR filter
y_2=filter(b_1,a_1,y_1);
% sound(y_2,Fs); %Uncomment to listen to the filtered signal(FIR)

% Running the modified signal through our FIR filter
y_3=filter(b_2,a_2,y_1);
% sound(y_3,Fs); %Uncomment to listen to the filtered signal(IIR)

%% Part F

% Plotting the first 100 samples of the original, modified and filtered
% signals
figure(3);
sgtitle("Effect of FIR and IIR Notch Filters on Signals");

subplot(2,2,1);
stem(y(1:100));
grid on;
title("\bf{Original Signal}","interpreter","latex");
xlabel("$n$","interpreter","latex");
ylabel("$y[n]$","interpreter","latex");

subplot(2,2,2);
stem(y_1(1:100));
grid on;
title("\bf{Distorted Signal}","interpreter","latex");
xlabel("$n$","interpreter","latex");
ylabel("$y_1[n]$","interpreter","latex");

subplot(2,2,3);
stem(y_2(1:100));
grid on;
title("\bf{Passed through (a) FIR Filter}","interpreter","latex");
xlabel("$n$","interpreter","latex");
ylabel("Filtered $y_1[n]$","interpreter","latex");

subplot(2,2,4);
stem(y_3(1:100));
grid on;
title("\bf{Passed through (b) IIR Filter}","interpreter","latex");
xlabel("$n$","interpreter","latex");
ylabel("Filtered $y_1[n]$","interpreter","latex");

%% Observations

%% PART C
% a)For FIR Filter
% Zeros={ e^(jω0), e^(-jω0) } and no poles
% So,the only possible ROC = C - {0} or |z|>0
% =>The system will be causal and stable.
% 
% b)IIR Filter
% Zeros={ e^(jω0), e^(-jω0) }
% Poles={ r0*e^(jω0), r0*e^(-jω0) }
% So,The possible ROCs are |z| < r0, |z| > r0
% But we are given, r0 = 0.9 < 1
% so if ROC = |z| < r0 ==> System is anti-causal and unstable and if ROC = |z| > r0 ==> is System causal and stable

%% PART D
 
% As r0 approaches 1, the poles and zeros get closer, and thus
% the system will approach :
% - impulse response   - δ[n]
% - magnitude response - 1
% - phase response     - 0
% - pole-zero plot     - no poles, no zeros
% 
% The effect of changing r0 from 0.9 to 0.5 and 0.99 on the
% following results of IIR Filter
% 
% -> Magnitude Response
% The transition band becomes smaller as r0 increases and it
% approaches a system where all frequencies pass through the
% filter except for w0 = π/4
% 
% -> Phase Response
%  It approaches 0, but at frequency w0 = π/4, the phase becomes +-π/2
% 
% -> Impulse Response
% The impulse response changes from being a sinc wave to a function
% having 1 at n = 0 and gets closer to 0 at all other values.
% (i.e. it approaches δ[n])
% 
% -> Pole-Zero Plot
% The poles and zeros get closer as r0 increases to 1.


%% PART F

% We have found out that the sampling frequency of 'handel.wav' is fs = 8192 Hz.
% And the f0 of the sin wave is f0=1024 Hz
% 
% The FIR and IIR filters are designed to remove
% the angular frequency w0 = π/4.
% So,in the frequency domain, f0 = (fs/2π)*(π/4) = fs/8 = 8192/8 = 1024 Hz.
% 
% So, after filtering we are left with our original signal. 

