%% Practical Problems 4 Question 3

x = -2*pi:0.5:2*pi;
x0 = 
n = [{1:2}, {1:4}, {1:8}, {1:16}];
mac = @(x, n) ((-1).^n)*x.^(2*n)/factorial(2*n);
S = zeros(1, 26);
S(1) = mac(x, 0);

for i=1:25
    S(i+1) = S(i) + mac(x, i);
end

