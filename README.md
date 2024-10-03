# Gaussian Elimination in MATLAB
### By: Yash Mhaskar | Date: 3 - Oct - 24

This MATLAB project implements the Gaussian elimination method with back substitution to solve a system of linear equations of the form `ax = b`.

## Working:
- The function `gauss_elimination(a, b)` accepts a coefficient matrix `a` and a column vector `b` as inputs.
- It transforms the system into an upper triangular form using Gaussian elimination.
- The solution is then found using back substitution.

## Usage:
- Clone the repository or download the script.
- Run the script

        % Driver Code

        a = input('Enter matrix a: ');
        b = input('Enter matrix b: ');
        x = gauss_elimination(a, b);
- Example:

    i/p

    `a = [2 1 1; 3 2 3; 1 4 9]`

    `b = [10; 18; 16]`
    
    o/p

    `x = [7; -9; 5]`

## Example Input:
    Enter matrix a: [2 1 1; 3 2 3; 1 4 9]
    Enter matrix b: [10; 18; 16]

## Example Output:
    Solution vector x is: 
         7
        -9
         5

## Screenshot:
![Screenshot 2024-10-03 161538](https://github.com/user-attachments/assets/d91a5a35-d70f-4d92-b56d-842634a70529)

## Requirements:
- MATLAB

---
