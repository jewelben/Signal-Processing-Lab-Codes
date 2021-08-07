function B = myHPF(A, w0_FS, wc)

N =(length(A)-1)/2;

B = zeros(2*N+1,1);

p = -N;
for nn = 1:2*N + 1
    if (abs(p * w0_FS) >= wc)
        B(nn) = A(nn);
    else
        B(nn) = 0;
    end
    p = p + 1;
end
end
    