% Notið Aðferð Newtons til að nálga rót fallsins f út frá upphafságiskuninni 
% q=0.1*ones(7,1) með 6 markverðum
% aukastöfum. Útkoman sem þið ættuð að fá (skrifuð hér með 4 aukastöfum) er
% q = [0.2388, 0.0869, 0.0330, 0.539, 0.0869, 0.1519, 0.2388]T.
% Ath: Til að meta stærð á vigri (t.d. kxk ? xk?1k) getið þið notað matlab 
% fallið norm() og til að leysa línulegt
% jöfnuhneppi Ax = b í matlab þá má nota aðgerðina A \ b.

function out=part3()
format long

% Upphafsgisk gott gisk
q = 0.1*ones(7,1);

% Skrefin
x = 100;

% Error - 6 markverdir
err = 0.5*10^-6;

% Meta stærð vigurs, upphafsstillt í 1 svo við komumst í while loop
s = 1;
i = 6;

% Ítrum
while(s >= err)
    % Sækjum vigurinn úr part1 
    b = part1(q,x);
    
    % Sækjum Jacobi úr part2
    A = part2(q,x);
    
    % Nálgar rót fallsins f(q) með aðferð Newtons
    N = A\-b;
    q = q+N;
    
    % Meta stærð vigurs
    s = norm(N); 
    
end
q

% Framvirk skekkja af niðurstöðu Newton fylkis úr part3
framvirk = norm(N);

% Afturvirk skekkja af niðurstöðu vigurs úr part3
afturvirk = norm(b);

framvirk

afturvirk

end 