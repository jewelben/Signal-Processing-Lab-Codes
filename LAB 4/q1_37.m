%% Question 1

%% bit rate
% audio file 1 --> 256 kbps
% audio file 2 --> 512 kbps
% audio file 3 --> 1411 kbps
% audio file 4 --> 1411 kbps

%% Sampling frequencies ( fs )
[y_1,fs_1]=audioread('file_example_WAV_1MG.wav');
[y_2,fs_2]=audioread('file_example_WAV_2MG.wav');
[y_3,fs_3]=audioread('file_example_WAV_5MG.wav');
[y_4,fs_4]=audioread('file_example_WAV_10MG.wav');

fprintf('Sampling frequency fs_1:');disp(fs_1);
fprintf('Sampling frequency fs_2:');disp(fs_2);
fprintf('Sampling frequency fs_3:');disp(fs_3);
fprintf('Sampling frequency fs_4:');disp(fs_4);

%% Duration of audio signal
fprintf('Length of audio file 1:');disp(length(y_1)/fs_1);
fprintf('Length of audio file 2:');disp(length(y_2)/fs_2);
fprintf('Length of audio file 3:');disp(length(y_3)/fs_3);
fprintf('Length of audio file 4:');disp(length(y_4)/fs_4);

%% Bit Depths
Bit_depth_1= 256000/(2*fs_1);
Bit_depth_2= 512000/(2*fs_2);
Bit_depth_3= 1411000/(2*fs_3);
Bit_depth_4= 1411000/(2*fs_4);

fprintf('Bit depth of audio file 1:');disp(Bit_depth_1);
fprintf('Bit depth of audio file 2:');disp(Bit_depth_2);
fprintf('Bit depth of audio file 3:');disp(Bit_depth_3);
fprintf('Bit depth of audio file 4:');disp(Bit_depth_4);

%% Playing the audio files
% sound(y_1,fs_1);
% sound(y_2,fs_2);
% sound(y_3,fs_3);
% sound(y_4,fs_4);

%% Playing at lower sampling frequency
% sound(y_1,0.9*fs_1);
% sound(y_1,0.8*fs_1);
% sound(y_1,0.7*fs_1);

%% Playing at higher sampling frequency
% sound(y_1,1.2*fs_1);
% sound(y_1,1.4*fs_1);
% sound(y_1,1.6*fs_1);

%% Observations
