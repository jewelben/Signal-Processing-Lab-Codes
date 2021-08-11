function B = NonIdeal(A, w0_FS, G, a)

N =(length(A)-1)/2;

B = zeros(2*N+1,1);

p = -N;

for nn = 1:2*N + 1

    B(nn) = A(nn) * G / (a + (1i*p* w0_FS));
    p = p + 1;
end

end
