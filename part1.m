% Skrið matlab forrit fyrir vigurfallið í jöfnu (4). Forritið getur t.d. verið á forminu
% þar sem q er 7-víður vigur. Fyrir gildin q=0.1*ones(7,1) og x=100 
% þá ætti fallið að gefa vigurinn
% out = [?0.1000, ?0.10000, 0.10000, 0.10000, 1.25000, 2.00000, ?8.03496]T.

function out=part1(q,x);

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


out=[q(1)-q(2)-q(6); 
   q(2)-q(3)-q(4); 
   q(3)+q(4)-q(5); 
   q(5)+q(6)-q(7); 
   L3.*q(3).^2-L4.*q(4).^2;
   L2.*q(2).^2+L4.*q(4).^2 + L5.*q(5).^2-L6.*q(6).^2; 
   L1.*q(1).^2+L6.*q(6).^2 + L7.*q(7).^2 - ((pi^2*d^5)/(8*f*rho))*deltap];

end