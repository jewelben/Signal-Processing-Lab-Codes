%% Question 3

% We have chosen to work with audio file no.1(file_example_WAV_1MG.wav) for
% question 4.3

% storing the samples/sample data in y and the sampling frequency in fs
[y,fs]=audioread('file_example_WAV_1MG.wav');

%length/duration of the selected audio file
duration_1=(length(y)/fs);

B=3; % given bit depth
a=1; % Number used to decide the range of our quantization

% We are quantizing both the channels of the audio signals individually and
% storing it in a vector x with two channels
x(:, 1) = quadratic_quant(y(:, 1),B,a);
x(:, 2) = quadratic_quant(y(:, 2),B,a);
duration_2=(length(x)/fs);

%% Part 1

% playing the original and the quantized audio signal one after the other.
sound(y,fs); %Original
pause(duration_1);

sound(x,fs);% Quantized audio
pause(duration_2);


%% Part 2

% Quantizing the original audio signals with different bit depths (from 1 to 8)
% and playing the first 10 seconds of the sample one by one with a delay of
% 2 seconds in between

for B =1:8
x(:, 1) = quadratic_quant(y(:, 1),B,a);
x(:, 2) = quadratic_quant(y(:, 2),B,a);

sound(x,fs);
pause(10);
clear sound;
pause(2);
end

%% Observations 

%% Part 1
% We can observe that the quantized signal sounds muffled and unclear
% while the original audio sounds cleaner and clear as it has more bit depth.

%% Part 2
% We observe that the quality of the audio increases when the number of
% levels is increased  as it replicates the sample better reducing an distortion/error in the signal.

%% Part 3
%  As the bit depth B is increased, the unwanted frequncies in the quantized
% signal reduce and hence the error relative to the orignal signal is also
% lower.When we have more levels available for quantization we can
% represent the signal more accurately.
