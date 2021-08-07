function X = radix2fft(x)

N = length(x);

if N == 2 % Base case
    G1 = x(1);
    G2 = x(2);
    X = [G1+G2,G1-G2];
else
    X1 = zeros(1,N/2);
    X2 = zeros(1,N/2);
    P = zeros(1,N/2);
    
    for k = 0:N/2-1
            X1(k+1) = x(2*k+1);
            X2(k+1) = x(2*k+2);
            P(k+1) = exp(-1i*2*pi*k/N);
    end
    
    G1 = radix2fft(X1);
    G2 = radix2fft(X2);
    X = [G1+P.*G2,G1-P.*G2];    
end

end