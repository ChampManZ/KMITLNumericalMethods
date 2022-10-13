%% Practical Problems 6.1 Question 9

% Multidimensional Newton-Raphson = xi+1 = xi - J^-1 * F
% Note: J = [diff(f1,i/x1) ...];
% Note: J^-1 * F = J\F;

% Step 1: Plot Graph
func1 = @(x, y) (3*(x.^2)) + (2*(y.^2)) - 25;
func2 = @(x, y) (2*(x.^2)) - y - 15;

fimplicit(func1);
hold on
grid on
fimplicit(func2);

% Step 2: Find Root using Newton-Raphson
% From x(i+1) = x(i) - J\F
myRoot = zeros(1, 100);
J = [6*x 4*y; 4*x -1;];
