function X = DT_Fourier(x,N0,w)

X = zeros(size(w));

% Calculating DTFT of x[n], limited to a finite summation
for nn = 1:length(x)
    X = X + x(nn)*exp(-1i*w*(nn-N0));
end

end
