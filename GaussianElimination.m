% Driver Code

% Prompt the user for input matrices a and b
a = input('Enter matrix a: ');
b = input('Enter matrix b: ');

% Call the Gaussian elimination function to solve the system
x = gauss_elimination4(a, b);
fprintf('\nSolution vector x is: \n');
disp(x)

% Function: gauss_elimination
% Solves a system of linear equations Ax = b using Gaussian Elimination with back substitution.
%
% Parameters:
%    a - coefficient matrix (n x n)
%    b - column vector of constants (n x 1)
%
% Returns:
%    x - solution vector (n x 1)
%
% Procedure:
% 1. Upper Triangular Matrix Formation:
%    The outer loop controls the column index (pivot element), reducing
%    the matrix to upper triangular form.
%
%    The inner loop iterates over rows below the pivot row, performing
%    row operations to eliminate lower triangular elements.
%
% 2. Back Substitution:
%    After the upper triangular matrix is formed, the solution is obtained
%    through back substitution, working from the last variable up to the first.

function x = gauss_elimination4(a, b)
    n = length(b);                                                      % Number of equations
    aug = [a b];                                                        % Create the augmented matrix [a : b]

    % Make the upper triangular matrix
    for j = 1:n-1                                                       % Iterate over each pivot column
        for i = j+1:n                                                   % Iterate over rows below the pivot
            factor = aug(i, j) / aug(j, j);                             % Compute the row reduction factor
            aug(i, j:n+1) = aug(i, j:n+1) - factor * aug(j, j:n+1);     % Update the row
        end
    end

    % Back substitution
    x = zeros(n, 1);                                                    % Initialize the solution vector
    x(n) = aug(n, end) / aug(n, n);                                     % Solve for the last variable
    for i = n-1:-1:1                                                    % Iterate from second-to-last variable to first
        x(i) = (aug(i, end) - aug(i, i+1:n) * x(i+1:n)) / aug(i, i);    % Solve each variable
    end
end