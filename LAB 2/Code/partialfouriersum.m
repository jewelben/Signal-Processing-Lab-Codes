function z = partialfouriersum(A,T,time_grid)

w0 = 2 * pi / T;
z=zeros(size(time_grid));
N=(length(A)-1)/2;

p=1;
for x=-N:N
    z=z+(A(p)*exp(1i*x*w0*time_grid));
    p=p+1;
end
end