%% Practical Problems 5 Question 5

func = @(x) x.^2 - x - exp(-x);
fplot(func, [-3 3]);
grid on

tolerance = 0.0001;
n = 100;

g1 = @(x) x.^2 - exp(-x);
