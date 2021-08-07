% Q2.1 %

% PART B %

% define relevant parameters
syms t;
T=2;
w=-5:0.1:5;
xt=rectangularPulse(-T,T,t);

z=continuousFT(t,xt,-T,T,w);

figure(1);
subplot(2,2,1);
plot(w,z);

subplot(2,2,2);
plot(w,z/1i);

subplot(2,2,3);
plot(w,abs(z));

subplot(2,2,4);
plot(w,angle(z));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART C %

T=1;
xt=rectangularPulse(-T,T,t);
z=continuousFT(t,xt,-T,T,w);

figure(2);
subplot(2,2,1);
plot(w,z);

subplot(2,2,2);
plot(w,z/1i);

subplot(2,2,3);
plot(w,abs(z));

subplot(2,2,4);
plot(w,angle(z));


T=4;
xt=rectangularPulse(-T,T,t);
z=continuousFT(t,xt,-T,T,w);

figure(3);
subplot(2,2,1);
plot(w,z);

subplot(2,2,2);
plot(w,z/1i);

subplot(2,2,3);
plot(w,abs(z));

subplot(2,2,4);
plot(w,angle(z));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART D %

T=pi;

xt=exp(1i*t);
z=continuousFT(t,xt,-T,T,w);

figure(4);
subplot(2,2,1);
plot(w,z);

subplot(2,2,2);
plot(w,z/1i);

subplot(2,2,3);
plot(w,abs(z));

subplot(2,2,4);
plot(w,angle(z));

xt=cos(t);
z=continuousFT(t,xt,-T,T,w);

figure(5);
subplot(2,2,1);
plot(w,z);

subplot(2,2,2);
plot(w,z/1i);

subplot(2,2,3);
plot(w,abs(z));

subplot(2,2,4);
plot(w,angle(z));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART E %

T=2;
w=-5:0.1:5;
xt=triangularPulse(t);
z=continuousFT(t,xt,-T,T,w);

figure(6);
subplot(2,2,1);
plot(w,z);

subplot(2,2,2);
plot(w,z/1i);

subplot(2,2,3);
plot(w,abs(z));

subplot(2,2,4);
plot(w,angle(z));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

