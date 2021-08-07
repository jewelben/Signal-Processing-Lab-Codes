function xr = sinc_recon(n, xn, Ts, t_fine)

xr = zeros(size(t_fine));
ws = 2 * pi / Ts;
wc = ws / 2;

for mm = 1 : length(t_fine)
    tx = t_fine(mm);
    for nn = 1:length(n)
        if (tx - (n(nn)*Ts) == 0)
            xr(mm) = xr(mm) + (Ts*xn(nn)*wc/pi);
        else
            xr(mm) = xr(mm) + (Ts*xn(nn)* sin(wc*(tx-(n(nn)*Ts))))/(pi*(tx - (n(nn)*Ts)));            
        end
    end
end

end

