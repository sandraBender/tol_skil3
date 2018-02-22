function out=part6(x)

% Upphafsgisk gott gisk
q = 0.1*ones(7,1);

% Error - 6 markverdir
err = 0.5*10^-6;

% Meta st�r� vigurs, upphafsstillt � 1 svo vi� komumst � while loop
s = 1;

% �trum
while(s >= err)
    % S�kjum vigurinn �r part1 
    b = part1(q,x);
    
    % S�kjum Jacobi �r part2
    A = Jac(q,x);
    
    % N�lgar r�t fallsins f(q) me� a�fer� Newtons
    N = A\-b;
    q = q+N;
    
    % Meta st�r� vigurs
    s = norm(N); 
    
end
out = q(3);

end
