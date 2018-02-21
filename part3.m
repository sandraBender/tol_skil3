% Notið Aðferð Newtons til að nálga rót fallsins f út frá upphafságiskuninni 
% q=0.1*ones(7,1) með 6 markverðum
% aukastöfum. Útkoman sem þið ættuð að fá (skrifuð hér með 4 aukastöfum) er
% q = [0.2388, 0.0869, 0.0330, 0.539, 0.0869, 0.1519, 0.2388]T.
% Ath: Til að meta stærð á vigri (t.d. kxk ? xk?1k) getið þið notað matlab 
% fallið norm() og til að leysa línulegt
% jöfnuhneppi Ax = b í matlab þá má nota aðgerðina A \ b.

function out=part3(q,x)
format long

% Error - 6 significant figures
err = 0.5*10^-6;

% Initial value of the size of the vector. 
s = 1;

% Loop until the size of the vector is larger than or equal to the error 
while(s >= err)
    % Get the vector form part1 
    b = part1(q,x);
    
    % Get the Jacobi matrix from part2
    A = part2(q,x);
    
    % Approximates the root of the function f(q), using Newton's method 
    N = A\-b;
    q = q+N;
    
    % Evaluate the size of the vector
    s = norm(N); 
    
end
out=q;

% -- PART 4 --

% Forward error of the result from Newton's method from part3
forward = norm(N);

% Backwards error of the result of the vector from part3
backward = norm(b);

end 
