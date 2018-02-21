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
 
% Darcy-Weisbach jafnan
%deltap = ((8*f*rho*L)/((pi^2)*(d^5)))*q^2;

q1 = q(1,1)-q(2,1)-q(6,1); 
q2 = q(2,1)-q(3,1)-q(4,1); 
q3 = q(3,1)+q(4,1)-q(5,1); 
q4 = q(5,1)+q(6,1)-q(7,1); 
q5 = L3*q(3,1)^2-L4*q(4,1)^2;
q6 = L2*q(2,1)^2+L4*q(4,1)^2+L5*q(5,1)^2-L6*q(6,1)^2; 
q7 = L1*q(1,1)^2+L6*q(6,1)^2+L7*q(7,1)^2-((pi^2*d^5)/(8*f*rho))*deltap;

syms q1 q2 q3 q4 q5 q6 q7
f = [q1,q2,q3,q4,q5,q6,q7]
v = [q1;q2;q3;q4;q5;q6;q7]

J = jacobian(f, v);
J



end