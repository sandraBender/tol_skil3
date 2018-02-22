function out=Jac(q,x);

% Lengths of pipes [m]
L1 = 100;
L2 = x;
L3 = (400)-2*x;
L4 = 75;
L5 = x;
L6 = 75;
L7 = 50;

% Calculate and return Jacobi matrix
out = [1,-1,0,0,0,-1,0; 0,1,-1,-1,0,0,0; 0,0,1,1,-1,0,0;0,0,0,0,1,1,-1;0,0,2*L3*q(3),-2*L4*q(4),0,0,0; 0,2*L2*q(2),0,2*L4*q(4),2*L5*q(5), -2*L6*q(6),0; 2*L1*q(1),0,0,0,0,2*L6*q(6),2*L7*q(7)];

end