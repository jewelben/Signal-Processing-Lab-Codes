%% Question 1

% file_example_WAV_1MG.wav -->audio file 1
% file_example_WAV_2MG.wav -->audio file 2
% file_example_WAV_5MG.wav -->audio file 3
% file_example_WAV_10MG.wav -->audio file 4

%% bit rate (which was found through audio properties)
% audio file 1 --> 256 kbps
% audio file 2 --> 512 kbps
% audio file 3 --> 1411 kbps
% audio file 4 --> 1411 kbps

%% Sampling frequencies ( fs )
%storing the samples/sample data in y_i and the sampling frequency in fs_i , where i={1,2,3,4}
[y_1,fs_1]=audioread('file_example_WAV_1MG.wav');
[y_2,fs_2]=audioread('file_example_WAV_2MG.wav');
[y_3,fs_3]=audioread('file_example_WAV_5MG.wav');
[y_4,fs_4]=audioread('file_example_WAV_10MG.wav');

%printing the sanmpling frequencies in the given order
fprintf('Sampling frequency fs_1:');disp(fs_1);
fprintf('Sampling frequency fs_2:');disp(fs_2);
fprintf('Sampling frequency fs_3:');disp(fs_3);
fprintf('Sampling frequency fs_4:');disp(fs_4);

%% Duration of audio signal

% Duration of audio signal = total number of samples(y)/sampling frequency(fs)
% sampling frequency-->Number of samples per second
fprintf('Length of audio file 1:');disp(length(y_1)/fs_1);
fprintf('Length of audio file 2:');disp(length(y_2)/fs_2);
fprintf('Length of audio file 3:');disp(length(y_3)/fs_3);
fprintf('Length of audio file 4:');disp(length(y_4)/fs_4);

%% Bit Depths

% No. of bits used by the ADC (bit depth) = bitrate/(number of channels)*sampling rate
% bit depth = (bit_rate/2*fs_i)
% we are dividing by two as the audio signal has 2 channels.
Bit_depth_1= 256000/(2*fs_1);
Bit_depth_2= 512000/(2*fs_2);
Bit_depth_3= 1411000/(2*fs_3);
Bit_depth_4= 1411000/(2*fs_4);

% printing the bit depths in the given order
fprintf('Bit depth of audio file 1:');disp(Bit_depth_1);
fprintf('Bit depth of audio file 2:');disp(Bit_depth_2);
fprintf('Bit depth of audio file 3:');disp(Bit_depth_3);
fprintf('Bit depth of audio file 4:');disp(Bit_depth_4);

%% Playing the audio files (Please uncomment the line corresponding to the audio file number to play it)
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

%% Part 4
% Number of levels of quantization an ADC can perform is given as 2^(bit depth).
% Since all the signals have their bit_depth equal or very close to 16.
% The levels of quantization in all the 4 cases is 2^16 = 65,536.

%% Part 6
% As sampling frequency decreases,we notice that in the time-domain the
% sample is stretched and the audio plays slower than the orignal audio.
% We can also see that the outptut from the DAC is more and more inaccurate
% as the higher frequency contents are removed.

%% Part 7
% As sampling frequency increases, there is a squeezing in the time-domain
% of the signal which makes it seem like the audio sample is playing faster
% than the original.We can also observe that the outptut from the DAC is 
% still accurate as a wider range of frequencies is being included.

%% Part 8
% The Fourier transform property with which we can explain our observation mentioned above is
% frequency scaling which results in linear expansion or contraction of the time axis.