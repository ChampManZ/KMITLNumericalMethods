%% Practical Problems 5 Question 4

% Function
func = @(x) exp(x).*(cos(x).^2) - 2;
x_interval = 0:0.5:5;

% Plot Graph
grid on
hold on
fplot(func, [0 5]);

% Find root using fzero
for i=1:length(x_interval)
    myRoot(i) = fzero(func, x_interval(i));
end

% Plot Root
plot(myRoot, 0, 'gx');