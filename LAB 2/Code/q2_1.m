% Q2.1 %

% PART B %

% define function relevant parameters

syms t; %symbolic time variable
T=2; %time-period
w=-5:0.1:5; %given angular frequency
xt=rectangularPulse(-T,T,t); %rectangular pulse function

%Calculating the continuous fourier transform 
%where z stores the fourier coefficients 
z=continuousFT(t,xt,-T,T,w);

%plotting the fourier transform as a function of w when T=2.
figure(1);

%plotting real part of FT
subplot(2,2,1);
plot(w,z);
title("Real Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Re(X(\omega))$", "interpreter", "latex");
grid on;

%plotting imaginary part of FT
subplot(2,2,2);
plot(w,z/1i);
title("Imaginary Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Im(X(\omega))$", "interpreter", "latex");
grid on;

%plotting absolute value of FT
subplot(2,2,3);
plot(w,abs(z));
title("Absolute value of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$|X(\omega)|$", "interpreter", "latex");
grid on;

%plotting phase value of FT
subplot(2,2,4);
plot(w,angle(z));
title("Phase of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\theta (X(\omega))$", "interpreter", "latex");
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART C %

T=1; %time period
xt=rectangularPulse(-T,T,t); %rectangular pulse function
z=continuousFT(t,xt,-T,T,w);

figure(2);
%plotting the fourier transform as a function of w when T=1.

subplot(2,2,1);

%plotting real part of FT

plot(w,z);
title("Real Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Re(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,2);
%plotting imaginary part of FT

plot(w,z/1i);
title("Imaginary Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Im(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,3);
%plotting absolute value of FT

plot(w,abs(z));
title("Absolute value of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$|X(\omega)|$", "interpreter", "latex");
grid on;

subplot(2,2,4);
%plotting phase value of FT

plot(w,angle(z));
title("Phase of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\theta (X(\omega))$", "interpreter", "latex");
grid on;

%%%%%%

T=4; %time period
xt=rectangularPulse(-T,T,t); %rectangular pulse with T=4
z=continuousFT(t,xt,-T,T,w);

figure(3);

%plotting the fourier transform as a function of w when T=4.

subplot(2,2,1);  %plotting real part of FT
plot(w,z);
title("Real Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Re(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,2); %plotting imaginary part of FT
plot(w,z/1i);
title("Imaginary Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Im(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,3); %plotting absolute value of FT
plot(w,abs(z));
title("Absolute value of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$|X(\omega)|$", "interpreter", "latex");
grid on;

subplot(2,2,4); %plotting phase value of FT
plot(w,angle(z));
title("Phase of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\theta (X(\omega))$", "interpreter", "latex");
grid on;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART D %

T=pi;
% function taken here is x(t)=e^(jt)
xt=exp(1i*t);
z=continuousFT(t,xt,-T,T,w);%calculating the continuous FT of e^(jt)

figure(4);
%plotting the fourier transform as a function
% of w when the function is x(t)=e^(jt).

subplot(2,2,1);%plotting real part of FT
plot(w,z);
title("Real Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Re(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,2);%plotting imaginary part of FT
plot(w,z/1i);
title("Imaginary Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Im(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,3);%plotting absolute value of FT
plot(w,abs(z));
title("Absolute value of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$|X(\omega)|$", "interpreter", "latex");
grid on;


subplot(2,2,4);%plotting phase value of FT
plot(w,angle(z));
title("Phase of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\theta (X(\omega))$", "interpreter", "latex");
grid on;

xt=cos(t);
% function taken here is x(t)=cos(t)
z=continuousFT(t,xt,-T,T,w);%calculating the continuous FT of cos(t)


figure(5);
%plotting the fourier transform as a function
% of w when the function is x(t)=cos(t)

subplot(2,2,1);%plotting real part of FT
plot(w,z);
title("Real Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Re(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,2);%plotting imaginary part of FT
plot(w,z/1i);
title("Imaginary Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Im(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,3);%plotting absolute value of FT
plot(w,abs(z));
title("Absolute value of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$|X(\omega)|$", "interpreter", "latex");
grid on;

subplot(2,2,4); %plotting phase value of FT
plot(w,angle(z));
title("Phase of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\theta (X(\omega))$", "interpreter", "latex");
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PART E %

T=2; %time period of the function
w=-5:0.1:5;
xt=triangularPulse(t); %triangular pulse function with height 1 and base at (0,-1) & (0,1)
z=continuousFT(t,xt,-T,T,w); %calculating the continuous fourier transform for the triangular pulse

figure(6);
%plotting the fourier transform as a function of w when the function is
%x(t)=
%{
  1 , |t|<=T
  0 , |t|>T
%}

subplot(2,2,1); %plotting real part of FT
plot(w,z);
title("Real Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Re(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,2); %plotting imaginary part of FT
plot(w,z/1i);
title("Imaginary Part of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\Im(X(\omega))$", "interpreter", "latex");
grid on;

subplot(2,2,3);%plotting absolute value of FT
plot(w,abs(z));
title("Absolute value of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$|X(\omega)|$", "interpreter", "latex");
grid on;

subplot(2,2,4); %plotting phase value of FT
plot(w,angle(z));
title("Phase of $X(\omega)$", "interpreter", "latex");
xlabel("$\omega$", "interpreter", "latex");
ylabel("$\theta (X(\omega))$", "interpreter", "latex");
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Observations

%{
    (b) - Fourier Transformation of a rectangular pulse gives us a sinc wave which
          has no imaginary part. Since the real part is fluctuating continuously
          the angle also keeps fluctuating continuously between 0 and pi, but doesn't
          take any value in between.

    (c) - If we have a function X(at), then time scaling gives us

                            [(1 / |a|) * x(w / a)]

          Thus, if we shrink X(t) then x(w) will expand and will be scaled down.
          If we expand X(t) then x(w) will shrink and will be scaled up.
    
    (d) - The expected FT of exp(1j * t) and cos(t) is [2sin((w-1)pi)]/(w-1) and 
          2w*sin(pi * w)/(1 - w^2). The shapes that we observe are sinc function shifted
          to the right by 1 and an interference of 2 sinc functions shifted by 1 & -1 respectively.
          We can relate the two graphs as we know that cos(t) = [(e^(jt)+ e^(-jt))/2]

    (e) - We expect the fourier transform of triangular pulse to be sinc squared function,
          as convulation in time is multiplication in frequency, hence squared. 
          Geometrically we can write it as [ 1 -|t| ]. 
          Note: The triangular pulse can be represented as the convulation
          of a rectangular wave pulse with (amplitude 1) itself. 
%}

