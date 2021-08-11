function xr = sinc_recon(n, xn, Ts, t_fine)

    xr = zeros(size(t_fine));
    ws = 2 * pi / Ts;
    wc = ws / 2;

    for mm = 1 : length(t_fine)
        tx = t_fine(mm);
        for nn = 1:length(n)
            if (tx - (n(nn)*Ts) == 0)
                % Case when the denominator is zero. On appyling limits,
                % lim x->0 sin(nx) / x = n
                xr(mm) = xr(mm) + (Ts*xn(nn)*wc/pi);
            else
                xr(mm) = xr(mm) + (Ts*xn(nn)* sin(wc*(tx-(n(nn)*Ts))))/(pi*(tx - (n(nn)*Ts)));
            end
        end
    end

% Here, xr is the reconstruction of xt using samples xn of xt
% using sinc interpolation
end

