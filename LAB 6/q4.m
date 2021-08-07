N = 5;

A = zeros(1,N);
for k=1:N
A(k)=1/(k.*k);
end
P = zeros(1,N);
adsr=[0.3,0.2,0.7,0.3,0.2];

fs = 10000;
 %F_notes = [262,262,392,392,440,440,392,0,349,349,330,330,294,294,262,0,392,392,349,349,330,330,294,0,392,392,349,349,330,330,294,0,262,262,392,392,440,440,392,0,349,349,329,329,294,294,262,0];
F_notes = [260,260,390,390,440,440,390,0,350,350,330,330,290,290,260,0];
td_notes = zeros(size(F_notes))+0.55;
y = my_synthesizer(A, F_notes,P,adsr,td_notes,fs);
soundsc(y,fs);
audiowrite("123.wav",y,fs);
%{
M = 5;
F_notes = 50+50*rand(1,M);
td_notes = 0.5 + rand(1,M);
y = my_synthesizer(A, F_notes,P,adsr,td_notes,fs);
soundsc(y,fs);
%}
