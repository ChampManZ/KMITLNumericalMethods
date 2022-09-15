%% Practical Problems 5 Question 4

% Function
xplot = 1:5;
f = @(x) (exp(x) * cos(x).^2 - 2);

% I want to store each root for x = 0 to 5 to check what is the real root
% อันนี้คือสร้าง array เปล่าไว้เพื่อเพิ่ม root เข้าไปทีละอัน
r = double.empty(0, 5);

for i=0:5
    r(end+1) = fzero(f, i);
end

grid on
plot(xplot, f);