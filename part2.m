function out=part2(q,x);

% Inside radius of the pipes
d = 0.2;

% Darcy friction factor
f = 0.02;

% Fluid density
rho = 998;

% Water pressure (above 1 atm) [Pa]
deltap = 5.2*10^5;

% Lenghts of pipes [m]
L1 = 100;
L2 = x;
L3 = (400)-2*x;
L4 = 75;
L5 = x;
L6 = 75;
L7 = 50;
 
% Variables from equation (4)
syms q1 q2 q3 q4 q5 q6 q7

% Find the 7x7 Jacobian matrix
J = jacobian([q1-q2-q6, q2-q3-q6, q3+q4-q5, q5+q6-q7, (L3*q3^2)-(L4*q4^2), (L2*q2^2)+(L4*q4^2)+(L5*q5^2)-(L6*q6^2), (L1*q1^2)+(L6*q6^2)+(L7*q7^2)-(((pi^2)*(d^5))/(8*f*rho)*deltap)],[q1,q2,q3,q4,q5,q6,q7]);

% Insert initial values from q vector 
q1 = q(1);
q2 = q(2);
q3 = q(3);
q4 = q(4);
q5 = q(5);
q6 = q(6);
q7 = q(7);

out=subs(J);