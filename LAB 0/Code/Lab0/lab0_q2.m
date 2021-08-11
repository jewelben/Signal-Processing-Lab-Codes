t = 0:0.01:1;

figure(1);

subplot(2, 2, 1);
plot(t, sin(t));
title("Line Plot of $sin(t)$ vs $t$ Between 0 and 1",'interpreter','latex');
xlabel("$0 < t < 1$", 'interpreter', 'latex');
ylabel("$sin(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, exp(t));
title("Line Plot of $e^t$ vs $t$ Between 0 and 1",'interpreter','latex');
xlabel("$0 < t < 1$", 'interpreter', 'latex');
ylabel("$e^t$", 'interpreter', 'latex');

subplot(2, 2, 3);
plot(t, exp(-abs(t)));
title("Line Plot of $e^{-|t|}$ vs $t$ Between 0 and 1",'interpreter','latex');
xlabel("$0 < t < 1$", 'interpreter', 'latex');
ylabel("$e^{-|t|}$", 'interpreter', 'latex');

subplot(2, 2, 4);
plot(t, exp(-t .* t));
title("Line Plot of $e^{-t^2}$ vs $t$ Between 0 and 1",'interpreter','latex');
xlabel("$0 < t < 1$", 'interpreter', 'latex');
ylabel("$e^{-t^2}$", 'interpreter', 'latex');

%***********************************

t = -10:0.1:10;

figure(2);

subplot(2, 2, 1);
plot(t, sin(t));
title("Line Plot of $sin(t)$ vs $t$ Between -10 and 10",'interpreter','latex');
xlabel("$-10 < t < 10$", 'interpreter', 'latex');
ylabel("$sin(t)$", 'interpreter', 'latex');

subplot(2, 2, 2);
plot(t, exp(t));
title("Line Plot of $e^t$ vs $t$ Between -10 and 10",'interpreter','latex');
xlabel("$-10 < t < 10$", 'interpreter', 'latex');
ylabel("$e^t$", 'interpreter', 'latex');

subplot(2, 2, 3);
plot(t, exp(-abs(t)));
title("Line Plot of $e^{-|t|}$ vs $t$ Between -10 and 10",'interpreter','latex');
xlabel("$-10 < t < 10$", 'interpreter', 'latex');
ylabel("$e^{-|t|}$", 'interpreter', 'latex');

subplot(2, 2, 4);
plot(t, exp(-t .* t));
title("Line Plot of $e^{-t^2}$ vs $t$ Between -10 and 10",'interpreter','latex');
xlabel("$-10 < t < 10$", 'interpreter', 'latex');
ylabel("$e^{-t^2}$", 'interpreter', 'latex');