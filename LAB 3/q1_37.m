% Q1 %

t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);

Ts = 0.1;
t_samples = 0:Ts:2;

x = zeros(size(t_samples));

for nn = 1 : 21
       x(nn) = xt((100 * (nn - 1)) + 1);

end

figure(1);


plot(t_fine, xt);
hold on;
stem(t_samples, x);
hold off;
title("$cos(5\pi t) + sin(10\pi t)$ : $x(t)$ and $x[n]$", 'interpreter', 'latex'); 
xlabel("$0 < t < 2$", 'interpreter', 'latex');
ylabel("$cos(5\pi t) + sin(10\pi t)$", 'interpreter', 'latex'); 
legend("$x(t)$", "$x[n]$", 'interpreter', 'latex');

