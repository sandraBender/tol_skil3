% Reiknið æðið í öllum rörunum fyrir x-gildi á bilinu [1, 199] og 
% sýnið niðustöðurnar ykkar á (helst einu) gra.

function out=part5()

% Upphafsgisk gott gisk
q = 0.1*ones(7,1);

% Reikna flæði á gefnu bili x
x = 1:1:199;

% Sækja flæðið í öllum rörum
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

% Plottaða
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
legend('q1','q2','q3','q4','q5','q6','q7');

% -- PART 6 --

% Gullsniðilsaðferðin (úr bókinni) tekur newton fall inn sem parameter
g = gss(@part66, 1, 199, 22);

% Plottum q3 á hverju bili í x
figure();
plot(x, q3, 'r'); hold on
% q3 í rót fallsins (0.033 er q3 með 2 markverðum aukastöfum)
plot(g, 0.033, 'bo'); hold off

end 