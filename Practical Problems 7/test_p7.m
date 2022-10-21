% Input the data
x = [0 2 4 6 9 11 12 15 17 19] ;
y = [5 6 7 6 9 8 8 10 12 12] ;
n = 10 ; % Number of data points should be calculated from the input vectors rather than counted manualy

% Obtain the necessary columns of the table
xy = x.*y ;
xsq = x.^2 ; % x-squared column
      
% Obtain the values needed for the formulae
sumx = sum(x) ;
sumy = sum(y) ;
sumxy = sum(xy) ;
sumxsq = sum(xsq) ;
xbar = mean(x) ;
ybar = mean(y) ;

% Calculate the coefficients using the formulae in the lecture notes
% (either algebraic formulae or set up the matrix and solve with the backslash
% operator, Gauss-Jordan elimination or LU-factorisation.
a1 = ( (n * sumxy) - (sumx * sumy) ) / ( n * sumxsq - (sumx)^2 );
a0 = ybar - (a1 * xbar);

% Calculate the fitted data
xfit = linspace(0,20); % Include enough x-values for the fitting function so that it looks smooth
yfit = @(x) a0 + a1*x ; % The equation of the line using the xfit points

% Plot both raw data and the fitting equation on the same graph
plot(x, y , 'ro');
hold on
plot(xfit, yfit(xfit), 'b')