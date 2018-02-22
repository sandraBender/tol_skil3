% Reiknið æðið í öllum rörunum fyrir x-gildi á bilinu [1, 199] og 
% sýnið niðustöðurnar ykkar á (helst einu) gra.

function out=part5()

% Educated first guess
q = 0.1*ones(7,1);

% Reikna flæði á gefnu bili x
% Calculate the flow of a given interval x
x = 1:1:199;

% Sækja flæðið í öllum rörum
% Calculate the flow in all pipes 
for i = 1:length(x)
    q = part3(q,i);
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
xlabel('Relative length of the pipes on interval [1;199] in [m]');
ylabel('Flow of liquid in [m^3/s]');
legend('q1','q2','q3','q4','q5','q6','q7');

% -- PART 6 --

% Golden section search (from book), takes Newton function in as parameter, 
% interval from [1;199] and number of steps is 20. 
% We decided on 20 as number of steps as running gss() 30 times over we found the evaluation
% is a good estimate with 2 sigificant figures at step no. 20. 
g = gss(@part66, 1, 199, 20);

% Plot q3 on interval x
figure();
plot(x, q3, 'r'); hold on
xlabel('Relative length of the pipes on interval x = [1;199] in [m]');
ylabel('Flow of liquid in [m^3/s]');

% Plot the root of function q3 (0.033 is min(q3) with 3 significant figures)
plot(g, 0.033, 'bo'); hold off


end 
