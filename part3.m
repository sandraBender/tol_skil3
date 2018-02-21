% Noti� A�fer� Newtons til a� n�lga r�t fallsins f �t fr� upphafs�giskuninni 
% q=0.1*ones(7,1) me� 6 markver�um
% aukast�fum. �tkoman sem �i� �ttu� a� f� (skrifu� h�r me� 4 aukast�fum) er
% q = [0.2388, 0.0869, 0.0330, 0.539, 0.0869, 0.1519, 0.2388]T.
% Ath: Til a� meta st�r� � vigri (t.d. kxk ? xk?1k) geti� �i� nota� matlab 
% falli� norm() og til a� leysa l�nulegt
% j�fnuhneppi Ax = b � matlab �� m� nota a�ger�ina A \ b.

function out=part3()
format long

% Upphafsgisk gott gisk
q = 0.1*ones(7,1);

% Skrefin
x = 100;

% Error - 6 markverdir
err = 0.5*10^-6;

% Meta st�r� vigurs, upphafsstillt � 1 svo vi� komumst � while loop
s = 1;
i = 6;

% �trum
while(s >= err)
    % S�kjum vigurinn �r part1 
    b = part1(q,x);
    
    % S�kjum Jacobi �r part2
    A = part2(q,x);
    
    % N�lgar r�t fallsins f(q) me� a�fer� Newtons
    N = A\-b;
    q = q+N;
    
    % Meta st�r� vigurs
    s = norm(N); 
    
end
q

% Framvirk skekkja af ni�urst��u Newton fylkis �r part3
framvirk = norm(N);

% Afturvirk skekkja af ni�urst��u vigurs �r part3
afturvirk = norm(b);

framvirk

afturvirk

end 