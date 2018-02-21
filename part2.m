% Finni� 7 � 7 Jakobi-fylki� fyrir falli� f � j�fnu (4) og skri� svo matlab 
% forrit sem reiknar fylki�. Forriti� getur
% t.d. veri� � forminu

function out=part2(q,x);

% 7 v��ur vigur
q=0.1*ones(7,1);

% Skref
x=100;

% Innanver�ur rad�us allra r�ra
d=0.2;

% Darcy n�ningsstu�ull
f=0.02;

% ��ttleiki v�kvans
rho=998;

% Lengdir [m]
L1 = 100;
L2 = x;
L3 = (400)-2*x;
L4 = 75;
L5 = x;
L6 = 75;
L7 = 50;

% Yfir�r�stingur [Pa]
deltap = 5.2*10^5;

% Kallar � part22 sem reiknar og skilar Jacobi fylki
br = part22(q,x)

end