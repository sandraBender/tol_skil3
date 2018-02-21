% Finnið 7 × 7 Jakobi-fylkið fyrir fallið f í jöfnu (4) og skrið svo matlab 
% forrit sem reiknar fylkið. Forritið getur
% t.d. verið á forminu

function out=part2(q,x);

% 7 víður vigur
q=0.1*ones(7,1);

% Skref
x=100;

% Innanverður radíus allra röra
d=0.2;

% Darcy núningsstuðull
f=0.02;

% Þéttleiki vökvans
rho=998;

% Lengdir [m]
L1 = 100;
L2 = x;
L3 = (400)-2*x;
L4 = 75;
L5 = x;
L6 = 75;
L7 = 50;

% Yfirþrýstingur [Pa]
deltap = 5.2*10^5;

% Kallar á part22 sem reiknar og skilar Jacobi fylki
br = part22(q,x)

end