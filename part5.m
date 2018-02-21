% Reikni� ��i� � �llum r�runum fyrir x-gildi � bilinu [1, 199] og 
% s�ni� ni�ust��urnar ykkar � (helst einu) gra.

function out=part5()

% Upphafsgisk gott gisk
q = 0.1*ones(7,1);

% Reikna fl��i � gefnu bili x
x = 1:1:199;

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

end 