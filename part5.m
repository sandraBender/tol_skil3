% Reikni� ��i� � �llum r�runum fyrir x-gildi � bilinu [1, 199] og 
% s�ni� ni�ust��urnar ykkar � (helst einu) gra.

function out=part5()

% Upphafsgisk gott gisk
q = 0.1*ones(7,1);

% Reikna fl��i � gefnu bili x
x = 1:1:199;

% S�kja fl��i� � �llum r�rum
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

% Plotta�a
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

% Gullsni�ilsa�fer�in (�r b�kinni) tekur newton fall inn sem parameter
g = gss(@part66, 1, 199, 22);

% Plottum q3 � hverju bili � x
figure();
plot(x, q3, 'r'); hold on
% q3 � r�t fallsins (0.033 er q3 me� 2 markver�um aukast�fum)
plot(g, 0.033, 'bo'); hold off

end 