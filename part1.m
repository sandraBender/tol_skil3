function out=part1(q,x);

% Inside radius of the pipes
d=0.2;

% Darcy friction factor
f=0.02;

% Fluid density
rho=998;

% Lenghts of pipes [m]
L1 = 100;
L2 = x;
L3 = (400)-2*x;
L4 = 75;
L5 = x;
L6 = 75;
L7 = 50;

% Water pressure (above 1 atm) [Pa]
deltap = 5.2*10^5;

% Calculate output vector in equation (4) 
out=[q(1)-q(2)-q(6); 
   q(2)-q(3)-q(4); 
   q(3)+q(4)-q(5); 
   q(5)+q(6)-q(7); 
   L3.*q(3).^2-L4.*q(4).^2;
   L2.*q(2).^2+L4.*q(4).^2 + L5.*q(5).^2-L6.*q(6).^2; 
   L1.*q(1).^2+L6.*q(6).^2 + L7.*q(7).^2 - ((pi^2*d^5)/(8*f*rho))*deltap];

end
