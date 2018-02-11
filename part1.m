% Skrið matlab forrit fyrir vigurfallið í jöfnu (4). Forritið getur t.d. verið á forminu
% þar sem q er 7-víður vigur. Fyrir gildin q=0.1*ones(7,1) og x=100 
% þá ætti fallið að gefa vigurinn
% out = [?0.1000, ?0.10000, 0.10000, 0.10000, 1.25000, 2.00000, ?8.03496]T.

function out=part1(q,x);
% 7 víður vigur
q=0.1*ones(7,1);
x=100;
% innanverður radíus allra röra
d=0.2;
% Darcy núningsstuðull
f=0.02;
% þéttleiki vökvans
p=998

f(q)=[q1-q2-q6, q2-q3-q4, q3+q4-q5, q5+q6-q7, L3*q3^2-L4*q4^2, ...
    L2*q2^2+L4*q4^2+L5*q5^2-L6*q6^2, L1*q1^2+L6*q6^2+L7*q7^2-((pi^2*d^5)/(8*f*p))*deltap0];

end