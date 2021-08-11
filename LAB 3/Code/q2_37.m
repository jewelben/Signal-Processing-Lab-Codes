% Q3.1 %

%% Parameters to pass
t_fine=0:0.001:2; %time vector used
Ts=0.1; %sampling time interval
t_samples=0:Ts:2; %time vector corresponding to location of the samples

%% Continuous and Discrete time signals
xt=cos(5*pi*t_fine)+sin(10*pi*t_fine); %continuous time signal

n=length(t_samples);
x=zeros(n,1);
% defining the discrete time signal x[n]=xt(nTs)
for nn=1:n
   x(nn)=xt(((nn-1)*(Ts/0.001))+1); 
end

%% plotting q3.1 graph
%plotting our sampled graph x[n] along with our reconstructing graph which
%was made using zero-h
figure(2);
sgtitle("Reconstruction of $x(t)=\cos(5\pi t)+\sin(10\pi t)$ using various interpolation methods", "interpreter", "latex");

subplot(2,2,1);
plot(t_fine,xt,'b');
hold on;
stem(t_samples,x,'r');
hold off;

title("Original vs Sampled", "interpreter", "latex");
xlabel("$t$", "interpreter", "latex");
ylabel("$x(t)$", "interpreter", "latex");
legend("$x(t)$", "$x[n]$", "interpreter", "latex");
grid on;

%% PART A - Zero-order hold reconstruction
%our reconstructed signal using zero-hold interpolation 
xt_A=interp1(t_samples,x,t_fine,'previous');

%plotting our samples graph x[n] along with our reconstructing signal which
%was made using zero-hold interpolation  where the function remains constant till the next sample 
subplot(2,2,2);
stem(t_samples,x,'r');
hold on;
plot(t_fine,xt_A,'b');
hold off;

title("Sampled vs Zero-order hold reconstruction", "interpreter", "latex");
xlabel("$t$", "interpreter", "latex");
ylabel("$x(t)$", "interpreter", "latex");
legend("$x[n]$", "$Interpolated$", "interpreter", "latex");
grid on;
axis([0 2 -2.5 2.5]);

%% PART B - Linear Interpolation

%our reconstructed signal using linear interpolation
xt_B=interp1(t_samples,x,t_fine,'linear');

%plotting our samples graph x[n] along with our reconstructing signal which
%was made using linear interpolation  where we simply connect the two samples obtained (linear change between two consecutive samples) 
subplot(2,2,3);
stem(t_samples,x,'r');
hold on;
plot(t_fine,xt_B,'b');
hold off;

title("Sampled vs Linear Interpolation", "interpreter", "latex");
xlabel("$t$", "interpreter", "latex");
ylabel("$x(t)$", "interpreter", "latex");
legend("$x[n]$", "$Interpolated$", "interpreter", "latex");
grid on;
axis([0 2 -2.5 2.5]);

%% PART C - Sinc Interpolation

%our reconstructed signal using sinc interpolation
n=0:2/Ts; %restricting our sinc from 0 to 2
xt_C=sinc_recon(n,x,Ts,t_fine);

%plotting our samples graph x[n] along with our reconstructing signal which
%was made using sinc interpolation where the sinc as a an LPF for the
%sequence of copies created on the frequency axis which results in a better
%reconstruction.
subplot(2,2,4);
stem(t_samples,x,'r');
hold on;
plot(t_fine,xt_C,'b');
hold off;

title("Sampled vs Sinc Interpolation", "interpreter", "latex");
xlabel("$t$", "interpreter", "latex");
ylabel("$x(t)$", "interpreter", "latex");
legend("$x[n]$", "$Interpolated$", "interpreter", "latex");
grid on;
axis([0 2 -2.5 2.5]);

%% Maximum Absolute Errors

left_limit=0.25/0.001;
right_limit=1.75/0.001;

% Part A %
%calculating error obtained when we compare the original function with the reconstucted signal using zero-hold
%interpolation
error_a=zeros(right_limit-left_limit+1,1);
for nn=left_limit:right_limit
error_a(nn-left_limit+1)=xt(nn+1)-xt_A(nn+1);
end

%stores maximum absolute error obtained when we compare the original function with the reconstucted signal using zero-hold
%interpolation
MAE_a=max(abs(error_a));

% Part B %

%calculating error obtained when we compare the original function with the
%reconstucted signal using linear
%interpolation
error_b=zeros(right_limit-left_limit+1,1);
for nn=left_limit:right_limit
error_b(nn-left_limit+1)=xt(nn+1)-xt_B(nn+1);
end

%stores maximum absolute error obtained when we compare the original
%function with the reconstucted signal using linear
%interpolation
MAE_b=max(abs(error_b));

% Part C %

%calculating error obtained when we compare the original function with the
%reconstucted signal using sinc
%interpolation
error_c=zeros(right_limit-left_limit+1,1);
for nn=left_limit:right_limit
error_c(nn-left_limit+1)=xt(nn+1)-xt_C(nn+1);
end

%stores maximum absolute error obtained when we compare the original
%function with the reconstucted signal using sinc
%interpolation
MAE_c=max(abs(error_c));

%printing out the respective MAE s
disp("MAE for part A (zero-hold)");
disp(MAE_a);
disp("MAE for part B (linear interpolation)");
disp(MAE_b);
disp("MAE for part C (sinc interpolation)");
disp(MAE_c);

%% Observations

% The zero-order resembles the original signal the least while the sinc interpolation closely resembles it.
% This is due to the method in which they are reconstucted where the zero-hold method makes the output a constant till it hits the next sample (resembling a DC signal)
% while the sinc function acts like an ideal LPF for the sequence of copies created on the frequency axis, causing a near to perfect reconstruction.
% In the case of linear interpolated reconstruction, we simply connect two
% consecutive samples that are obtained ,showing a linear change between
% these any two samples , which is better than the zero-hold interpolation
% but still less efficient.

%So, using the above observations , we can develop a rough estimate of the
%error that we might get when we compare the original with the
%reconstructed signal.

%MAE(zero) > MAE(linear) > MAE(sinc)

% The zero hold has the meximum absolute error while the sinc interpolation has the least. 
