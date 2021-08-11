A = rand(5,5);
B = A([3, 4, 5], [3, 4, 5]);
S = sum(B, 'all');
disp(S);