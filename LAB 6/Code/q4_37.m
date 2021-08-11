% Question 4 %

% Given Parameters
fs=10000; %sampling frequency
N=5;
A=zeros(1,N); % amplitudes of the sinusoids
P=zeros(1,length(A)); % phase angles
for ii=1:N
    A(ii)=1/(ii*ii); %defining a_k = 1/k^2
end

%% PART A

F_notes=50:5:100; % fundamental frequency notes
td_notes=ones(1,length(F_notes)); %duration of notes
adsr=[0.2 0.2 0.7 0.4 0.2]; %adsr vector containing (a,d,s,sd,r)

yn=my_synthesizer(A,F_notes,P,adsr,td_notes,fs); % Our synth tune

%Playing the tune
sound(yn,fs);
pause(sum(td_notes)+1);

%% PART B
F_notes=100:-10:40;% fundamental frequency notes
td_notes=ones(1,length(F_notes)); %duration of notes
adsr=[0.2 0.2 0.7 0.4 0.2];%adsr vector containing (a,d,s,sd,r)

yn=my_synthesizer(A,F_notes,P,adsr,td_notes,fs);% Our synth tune

%Playing the tune
sound(yn,fs);
pause(sum(td_notes)+1);

%% PART C
M=5;
F_notes=(50+50*rand(1,M)).*ones(1,M);% fundamental frequency notes
td_notes=(0.5+rand(1,M)).*ones(1,M); %duration of notes
adsr=[0.2 0.2 0.7 0.4 0.2]; %adsr vector containing (a,d,s,sd,r)

yn=my_synthesizer(A,F_notes,P,adsr,td_notes,fs);% Our synth tune

%Playing the tune
sound(yn,fs);
pause(sum(td_notes)+1);

%% PART D

% Making our custom tune using the synthesizer function
%We made the tune- twinkle twinkle little star
N = 5;
A = zeros(1,N);
for k=1:N
A(k)=1/(k*k);
end
P = zeros(1,N);
adsr=[0.3,0.2,0.7,0.3,0.2];
fs = 10000;
F_notes = [260,260,390,390,440,440,390,0,350,350,330,330,290,290,260,0];
td_notes = zeros(size(F_notes))+0.55;
y = my_synthesizer(A, F_notes,P,adsr,td_notes,fs);
sound(y,fs);
pause(sum(td_notes)+1);


%% PART E
% Creating the audio file
audiowrite("fav_audio.wav",y,fs);
