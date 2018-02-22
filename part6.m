function out=part6(x)

% Upphafsgisk gott gisk
q = 0.1*ones(7,1);

% Error - 6 markverdir
err = 0.5*10^-6;

% Meta stærð vigurs, upphafsstillt í 1 svo við komumst í while loop
s = 1;

% Ítrum
while(s >= err)
    % Sækjum vigurinn úr part1 
    b = part1(q,x);
    
    % Sækjum Jacobi úr part2
    A = Jac(q,x);
    
    % Nálgar rót fallsins f(q) með aðferð Newtons
    N = A\-b;
    q = q+N;
    
    % Meta stærð vigurs
    s = norm(N); 
    
end
out = q(3);

end
