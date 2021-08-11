function [N,ROC,ROC_zero]=region_of_convergence(p)

% Removing the duplicate elements ,taking the absolute value of the complex
% numbers(as distance is always real) and sorting them .
p_new=unique(abs(p));
% Adding the term Inf to our poles array 
p_new=[p_new,Inf];

% Checking if 0 is a pole and if it is, it cant be a part of the ROC so our ROC_zero becomes 0. 
% If it doesnt have 0 as a pole, ROC_zero is given 1. 
ROC_zero=1*(p_new(1)~=0);

% Accordingly we add zero to our new poles array
if ROC_zero==1
    p_new=[0,p_new];
end

N=length(p_new)-1; % Number of unique ROCs possible for H(z)
ROC=zeros(N,2); % Defining a Nx2 matrix indicating an ROC of the form r_1<|z|<r_2 .

%Assigning the values to our ROC matrix of the form r_1<|z|<r_2 .
for x=1:N
    ROC(x,1)=p_new(x);
    ROC(x,2)=p_new(x+1);
end
end