% Finnið 7 × 7 Jakobi-fylkið fyrir fallið f í jöfnu (4) og skrið svo matlab 
% forrit sem reiknar fylkið. Forritið getur
% t.d. verið á forminu

% Useless wanker
function out=part22(q,x);

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
 
% Breytur - diffraðar m.t.t. í Jacobi
syms q1 q2 q3 q4 q5 q6 q7

% Finna 7x7 Jacobi fylkið
J = jacobian([q1-q2-q6, q2-q3-q6, q3+q4-q5, q5+q6-q7, (L3*q3^2)-(L4*q4^2), (L2*q2^2)+(L4*q4^2)+(L5*q5^2)-(L6*q6^2), (L1*q1^2)+(L6*q6^2)+(L7*q7^2)-(((pi^2)*(d^5))/(8*f*rho)*deltap)],[q1,q2,q3,q4,q5,q6,q7]);

% Færa inn gildin úr q-fylki inn í Jacobi
q1 = q(1);
q2 = q(2);
q3 = q(3);
q4 = q(4);
q5 = q(5);
q6 = q(6);
q7 = q(7);

out=subs(J);
%out = [1,-1,0,0,0,-1,0; 0,1,-1,-1,0,0,0; 0,0,1,1,-1,0,0;0,0,0,0,1,1,-1;0,0,2*L3*q(3),-2*L4*q(4),0,0,0; 0,2*L2*q(2),0,2*L4*q(4),2*L5*q(5), -2*L6*q(6),0; 2*L1*q(1),0,0,0,0,2*L6*q(6),2*L7*q(7)];

