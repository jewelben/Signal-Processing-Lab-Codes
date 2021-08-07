N = -100:100;
M = (length(N)+1)/2;
X = sinc((pi/1.5)*N).^2;
plot(N,X);
w=-10:0.01:10;
Y = DT_Fourier(X,M,w);
figure(1);
subplot(2,2,1);
plot(w,Y-min(Y));



X3 = (X + exp(1i*pi*N).*X)/2;
Y3 = DT_Fourier(X3,M,w);
subplot(2,2,3);
plot(w,Y3-min(Y3));

X2 = zeros(1, 8001);

for nn = -50:50
        X2(nn+51)=X(2*nn+101);
end
Y2 = DT_Fourier(X2,51,w);
subplot(2,2,2);
plot(w,Y2-min(Y2));