function y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
y = [];

for ii = 1:length(F_notes)
    a(1)=adsr(1).*td_notes(ii);
    a(2)=adsr(2).*td_notes(ii);
    a(4)=adsr(4).*td_notes(ii);
    a(5)=adsr(5).*td_notes(ii);
    [t,env] = envelope(a(1),a(2),a(3),a(4),a(5),fs);
    xt = harmonics(A,F_notes(ii),P,td_notes(ii),fs);
    xte = xt(1:length(t)).*env;
    y = [y,xte];
end