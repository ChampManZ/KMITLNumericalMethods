%% Practical Problems 7 Question 2

% Note: r = Lecture 7 Slide 17

% Variable หยิบมาจาก Q1 เลย

x = [0, 2, 4, 6, 9, 11, 12, 15, 17, 19];
y = [5, 6, 7, 6, 9, 8, 8, 10, 12, 12];
xy = x.*y;
xx = x.^2;

mean_x = ( (sum(x)) ./ length(x));
mean_y = ( (sum(y)) ./ length(y));
sum_x = sum(x);
sum_y = sum(y);
sum_xy = sum(xy);
sum_xx = sum(xx);
n = length(x);

a1 = ((n * sum_xy) - (sum_x * sum_y)) / (n * sum_xx - (sum_x)^2);
a0 = (mean_y - (a1*mean_x));

r = ((n * sum_xy) - (sum_x * sum_y)) ./ ( sqrt((n*sum_xx) - (sum_x.^2)) * sqrt((n*(sum_y.^2)) - (sum_y.^2)) );

fprintf('The regression coefficient, r, is: %.4f\n', r.^2);