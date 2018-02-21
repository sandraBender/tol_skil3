% Finni� 7 � 7 Jakobi-fylki� fyrir falli� f � j�fnu (4) og skri� svo matlab 
% forrit sem reiknar fylki�. Forriti� getur
% t.d. veri� � forminu

% Useless wanker
function out=part22(q,x);

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
 
% Breytur - diffra�ar m.t.t. � Jacobi
syms q1 q2 q3 q4 q5 q6 q7

% Finna 7x7 Jacobi fylki�
J = jacobian([q1-q2-q6, q2-q3-q6, q3+q4-q5, q5+q6-q7, (L3*q3^2)-(L4*q4^2), (L2*q2^2)+(L4*q4^2)+(L5*q5^2)-(L6*q6^2), (L1*q1^2)+(L6*q6^2)+(L7*q7^2)-(((pi^2)*(d^5))/(8*f*rho)*deltap)],[q1,q2,q3,q4,q5,q6,q7]);

% F�ra inn gildin �r q-fylki inn � Jacobi
q1 = q(1);
q2 = q(2);
q3 = q(3);
q4 = q(4);
q5 = q(5);
q6 = q(6);
q7 = q(7);

out=subs(J);
%out = [1,-1,0,0,0,-1,0; 0,1,-1,-1,0,0,0; 0,0,1,1,-1,0,0;0,0,0,0,1,1,-1;0,0,2*L3*q(3),-2*L4*q(4),0,0,0; 0,2*L2*q(2),0,2*L4*q(4),2*L5*q(5), -2*L6*q(6),0; 2*L1*q(1),0,0,0,0,2*L6*q(6),2*L7*q(7)];

