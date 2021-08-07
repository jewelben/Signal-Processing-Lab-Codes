[y,fs]=audioread('file_example_WAV_1MG.wav');
duration_1=(length(y)/fs);

B=3;
a=1;

x(:, 1) = quadratic_quant(y(:, 1),B,a);
x(:, 2) = quadratic_quant(y(:, 2),B,a);
duration_2=(length(x)/fs);

%% Part 1

sound(y,fs);
pause(duration_1);
sound(x,fs);
pause(duration_2);


%% Part 2

for B =1:8
x(:, 1) = quadratic_quant(y(:, 1),B,a);
x(:, 2) = quadratic_quant(y(:, 2),B,a);

sound(x,fs);
pause(10);
clear sound;
pause(2);
end
