% Question 8.1 %

%% PART B

% Input 1
p = 0.2; %Location of Poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 2
p = 0; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 3
p = [0, 0.75]; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 4
p = [1, -0.75]; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 5
p = [0.75, -0.75]; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 6
p = [3, 3, 3]; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 7
p = [0, 1, 2]; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 8
p = [-0.5, 1j]; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 9
p = [0, 1j, -1j]; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 10
p = [1, -1, 2-1j, 2+1j]; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 11
p = [1-1j, 1-2j, 1-3j, 2-1j]; %Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);

% Input 12
p = [1, -1, 1j, -1j]; % Location of poles

[N,ROC,ROC_zero]=region_of_convergence(p); %Calling the function to find the Region of Convergence and passing the poles array into it
% Printing the poles array
fprintf('p=');
disp(p);
% Printing the number of unique ROC s
fprintf('N=%d\n',N);
% Printing the ROC matrix
fprintf('ROC=\n');
disp(ROC);
% Printing the scalar indicator variable
fprintf('ROC_zero=%d\n\n',ROC_zero);