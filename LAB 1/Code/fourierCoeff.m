function F = fourierCoeff(t,xt,T,t1,t2,N)
% function to find FS coefficients

% initialize
w0 = 2 * pi / T;
F = zeros(2*N+1,1);
k = -N;

% for-loop to find coefficents
for nn = 1:2*N+1
 expr = xt * exp(-1i * k * w0 * t);
 F(nn) = int(expr, t, t1, t2);
 F(nn) = F(nn) / T;
 k = k + 1;
end
end