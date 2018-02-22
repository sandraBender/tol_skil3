function out=part6(x)

% Error - 6 significant figures
err = 0.5*10^-6;

% Initial value of the size of the vector. 
s = 1;

% Loop until the size of the vector is larger than or equal to the error 
while(s >= err)
    
    % Get the vector from part1 
    b = part1(q,x);
    
    % Get the Jacobi matrix from part2
    A = Jac(q,x);
    
    % Approximates the root of the function f(q), using Newton's method 
    N = A\-b;
    q = q+N;
    
    % Evaluate the size of the vector
    s = norm(N); 
    
end

out = q(3);

end
