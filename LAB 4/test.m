[y, Fs] = audioread("file_example_WAV_2MG.wav");

    B = 10;
    x = zeros(size(y));
    x(:, 1) = quadratic_quant(y(:, 1),B,1);
    x(:, 2) = quadratic_quant(y(:, 2),B,1);
