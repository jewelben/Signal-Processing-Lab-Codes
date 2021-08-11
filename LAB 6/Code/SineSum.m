function xn = SineSum(A,F,P,td,fs)
t = 0:1/fs:td;
xt = zeros(size(t));
for nn = 1:length(A)
    xt = xt+(A(nn).*sin(2*pi*F(nn)*t + P(nn)));
end
xn = xt;
end