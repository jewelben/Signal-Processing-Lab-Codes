syms t;
T=pi;
w=-5:0.2:5;


xt=cos(t);
z=continuousFT(t,xt,-T,T,w);

y=continuousFT(t,xt,- 10 * T, 10 * T,w);
figure(1);
hold on;
plot(w,z);
plot(w,y);

hold off;

