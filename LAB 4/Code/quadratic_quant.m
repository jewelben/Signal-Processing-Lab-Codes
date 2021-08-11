function y = quadratic_quant(x,B,a)

y = zeros(size(x));
p = 2^(B - 1);
int_v = zeros(1, p + 1); % Vector storing the end points of intervals

for nn = 1:p+1
    % Endpoints are of the form 0 = r_1 < .... r_p-1 < rp = l
    int_v(nn) = (nn-1)/p; 
end

%% Quantizing the signal
% The quantizer intervals are of the form [a(r_i^2), a(r_i+1)^2)
% and [-a(r_i+1)^2, -a(r_i^2))
for nn = 1:length(x)
    for mm = 1:p
        % If the value of x[i] lies in a particular interval, the
        % corrosponding y[i] takes the value given by the midpoint of the
        % quantizer interval
        if a*(int_v(mm)^2) <= x(nn) && x(nn) < a*(int_v(mm+1)^2)
            y(nn) = a*((int_v(mm)^2)+(int_v(mm+1)^2))/2;
        elseif -a*(int_v(mm+1)^2) <= x(nn) && x(nn) < -a*(int_v(mm)^2)
            y(nn) = -a*((int_v(mm)^2)+(int_v(mm+1)^2))/2;
        end
    end
    
    % Case when the value of x[i] lies outside the interval [-a, a)
    if x(nn) >= a*(int_v(p+1)^2)
        y(nn) = a*((int_v(p)^2)+(int_v(p+1)^2))/2;
    elseif x(nn) < -a*(int_v(p+1)^2)
        y(nn) = -a*((int_v(p)^2)+(int_v(p+1)^2))/2; 
    end
end
            
end