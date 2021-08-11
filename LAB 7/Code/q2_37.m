% Question 2 %

%% PART a
n=0:9; %for the first ten samples of delta(n-3)

x1n=1.*(n==3); %delta(n-3)
x2n=randn(1,10);% random gaussian sequence

n_1=length(x1n); % length of delta sequence
n_2=length(x2n); % length of gaussian sequence

%% PART b

y1n=conv(x1n,x2n); % using the inbuilt function for linear convolution 
y2n=cconv(x2n,x1n,10); % using the inbuilt function for circular convolution

% Plotting the results of linear and circular convolution using inbuilt
% function
figure(1);
sgtitle("Linear and Circular convolution of two signals using the inbuilt functions and the DFT method");
subplot(2,2,1);
stem(y1n);
xlabel("$0<=n<=20$",'interpreter','latex');
ylabel("$$x_1[n] \ast x_2[n]$$",'interpreter','latex');
title("Linear Convolution using the inbuilt function",'interpreter','latex');
grid on;

subplot(2,2,2);
stem(y2n);
xlabel("$0<=n<=10$",'interpreter','latex');
ylabel("$$x_1[n] \ast x_2[n]$$",'interpreter','latex');
title("Circular Convolution using the inbuilt function",'interpreter','latex');
grid on;
%% PART c

% Finding linear convolution of two signals using the DFT
N=n_1+n_2-1; % for zero padding 

% Providing zero padding to our arrays to make them into length 2N-1 
x1n_a = [x1n,zeros(1,N-length(x1n))];
x2n_b = [x2n,zeros(1,N-length(x2n))];

y1n=ifft(fft(x1n_a).*fft(x2n_b)); 
% Since convolution in time domain is 
% multiplication in frequency domain , 
% we find the DFT of the two signals and multiply them and apply inverse DFT on the product

% Plotting the results of linear convolution using DFT
% function
subplot(2,2,3);
stem(y1n);
xlabel("$0<=n<=20$",'interpreter','latex');
ylabel("$$x_1[n] \ast x_2[n]$$",'interpreter','latex');
title("Linear Convolution using the DFT method",'interpreter','latex');
grid on;

% Finding circular convolution of two signals using the DFT
y2n=ifft(fft(x1n).*fft(x2n));
% Since convolution in time domain is 
% multiplication in frequency domain , 
% we find the DFT of the two signals and multiply them and apply inverse DFT on the product
% Our array length is maximum of the length of the two arrays


% Plotting the results of circular convolution using DFT
% function
subplot(2,2,4);
stem(y2n);
xlabel("$0<=n<=10$",'interpreter','latex');
ylabel("$$x_1[n] \ast x_2[n]$$",'interpreter','latex');
title("Circular Convolution using the DFT method",'interpreter','latex');
grid on;



