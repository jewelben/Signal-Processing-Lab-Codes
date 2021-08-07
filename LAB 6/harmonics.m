function xn = harmonics(A,f0,P,td,fs)
F = zeros(size(A));
for nn=1:length(A)
    F(nn)=nn*f0; % Harmonics of fundamental frequency f0
end
xn = SineSum(A,F,P,td,fs); % xn is a combination of weighted sinusoids of fundamental frequency f0
end