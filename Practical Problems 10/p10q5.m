%% Practical Problems 10 Question 5 | Slides 4-5

func = @(x) 0.2 + 25*x - 200*(x.^2) + 675*(x.^3) - 900*(x.^4) + 400*(x.^5);
output = comp_trapz(func, 0, 0.8, 1000);
disp(output);