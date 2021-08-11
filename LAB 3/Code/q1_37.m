%Q3.1%

%The Continuous-time signal%
t_fine=0:0.001:2; %time vector used
xt=cos(5*pi*t_fine)+sin(10*pi*t_fine); %continuous time signal

%%%%%%%%%%%%%%%%%%%%%%

%The Discete-time signal%
Ts=0.1; %sampling time interval
t_samples=0:Ts:2; %time vector corresponding to location of the samples

n=length(t_samples); 

x=zeros(n,1);
% defining the discrete time signal x[n]=xt(nTs)
for nn=1:n
   x(nn)=xt(((nn-1)*(Ts/0.001))+1); 
end

%Plotting of the continuous graph along with the discrete time signal
plot(t_fine,xt,'b');

hold on;
stem(t_samples,x,'r');
hold off;

title("Original vs Sampled", "interpreter", "latex");
xlabel("$t$", "interpreter", "latex");
ylabel("$x(t)$", "interpreter", "latex");
legend("$x(t)$", "$x[n]$", "interpreter", "latex");
grid on;

