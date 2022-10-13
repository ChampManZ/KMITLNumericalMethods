A = [1 -3 0; 0 1 3; 2 -10 2]; % The same matrix as in question 12 and 13
L = zeros(3); % Pre-allocate memory for L
    
% Find the matrix U from row reduction but scale first row so pivot is 1
L(1,1) = A(1,1); % Save the value of L11
A(1,:) = A(1,:)*1/L(1,1); % Scale so pivot is 1

% Make the first pivot have 0's underneath it
L(2,1) = A(2,1); % Save L21 
A(2,:) = A(2,:) - L(2,1) * A(1,:) ; % This should be R2 --> R2 - L21*R1

L(3,1) = A(3,1); % Save L31
A(3,:) = A(3,:) - L(3,1) * A(1,:) ; % This should be R3 --> R3 - L31*R1

L(2,2) = A(2,2); % Save L22
A(2,:) = A(2,:)*1/L(2,2); % Scale this row so second pivot is 1

% Make 0's underneath it
L(3,2) = A(3,2); % Save L32
A(3,:) = A(3,:) - L(3,2) * A(2,:) ; % This should be R3 --> R3 - L32*R2

L(3,3) = A(3,3); % Save L33
A(3,:) = A(3,:)*1/L(3,3); % Scale last pivot to be 1