format long
close all;
clear all;
clc;

%% Given variables declared here
% Educated first guess
q = 0.1*ones(7,1);

% Length of vector 
x = 100; 

% Preallocation for Task 3
q1 = zeros(199,1);
q2 = zeros(199,1);
q3 = zeros(199,1);
q4 = zeros(199,1);
q5 = zeros(199,1);
q6 = zeros(199,1);
q7 = zeros(199,1);

%% Task 1: 
% Returns the 7x1 vector for equation (4), using the initial values
% of q vector to calculate the returned values. 

fq = part1(q,x);

fprintf('Task 1: The vector for equation (4)\n');
fprintf('[%.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f]\n\n',fq(1),fq(2),fq(3),fq(4),fq(5),fq(6),fq(7));

%% Task 2:
% Find the 7x7 Jacobian matrix for function f in equation (4) and then
% write a program that calculates the matrix.

% Find Jacobian matrix using a built-in function
J = part2(q,x);

fprintf('Task 2: Jacobian matrix\n');
disp(J)
% Note: The function declared Jac includes the Jacobian matrix and is used
% for further calculations in order to avoid many expensive, unrequired
% procedures.

%% Task 3:
% Use Newton's method to approximate root of function f, using the initial
% guess vector q with 6 significant decimals.

% Error - 6 significant figures
err = 0.5*10^-6;

% Initial value of the size of the vector. 
s = 1;

% Loop until the size of the vector is larger than or equal to the error 
while(s >= err)
    
    % Get the vector from part1 
    b = part1(q,x);
    
    % Get the Jacobi matrix from part2
    A = Jac(q,x);
    
    % Approximates the root of the function f(q), using Newton's method 
    N = A\-b;
    q = q+N;
    
    % Evaluate the size of the vector
    s = norm(N); 
    
end
fq=q;
fprintf('Task 3: Newton''s method\n');
fprintf('[%.6g, %.6g, %.6g, %.6g, %.6g, %.6g, %.6g]\n\n',fq(1),fq(2),fq(3),fq(4),fq(5),fq(6),fq(7));


%% Task 4: 
% Determine the forward and backward error for the results from task 3. 

backward = norm(b,inf);
fprintf('Task 4: Relative backward error\n');
disp(backward);


%% Task 5: 
% Calculate flow for all pipes for x in range [1,199]. Plot the results. 

fprintf('Task 5: Plotting calculations for flow in all pipes\n');

% Educated first guess
q = 0.1*ones(7,1);

% Calculate the flow of a given interval x
x = 1:1:199;

% Calculate the flow in all pipes 
for i = 1:length(x)
    q = newton(q,i);
    q1(i) = q(1);
    q2(i) = q(2);
    q3(i) = q(3);
    q4(i) = q(4);
    q5(i) = q(5);
    q6(i) = q(6);
    q7(i) = q(7);
end

% Plot the flow of each pipe on the interval 
figure()
plot(x, q1, 'y');
hold on
plot(x, q2, 'c');
plot(x, q3, 'g');
plot(x, q4, 'r');
plot(x, q5, 'm');
plot(x, q6, 'k');
plot(x, q7, 'b'); 
hold off
xlabel('Relative length of the pipes [1;199] in [m]');
ylabel('Flow of liquid in [m^3/s]');
legend('q1','q2','q3','q4','q5','q6','q7');

%% Task 6:
% Use the Golden Section Search program (13.1 in textbook) to determine the
% flow in pipe q3 on interval [1,199]. Use the approximate value of q3 with
% two most significant decimals as parameter to GSS function. 

fprintf('Task 6: Plotting calculations for flow in q3\n');

% Golden section search (from book), takes Newton function in as parameter, 
% interval from [1;199] and number of steps is 20. 
% We decided on 20 as number of steps as running gss() 30 times over we found the evaluation
% is a good estimate with 2 sigificant figures at step no. 20. 
g = gss(@part6, 1, 199, 20);

% Plot q3 on interval x
figure();
plot(x, q3, 'r');
hold on

% Plot the root of function q3 (0.033 is min(q3) with 3 significant figures)
plot(g, 0.033, 'bo'); 
hold off
xlabel('Relative length of q3 on interval x = [1;199] in [m]');
ylabel('Flow of liquid in [m^3/s]');
legend('Interval x', 'GSS');

