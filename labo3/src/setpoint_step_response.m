close all;
res = importdata('data/5-4-4-setpoint-step.txt');

% time[s] SP[%] MV[%] PV[%]

plot(res(:,1)-1, res(:,4), 'r'); hold on;
plot(res(:,1)-1, res(:,2), 'b');
title('Setpoint step response')
xlabel('time [s]');
ylabel('voltage');
legend('Response', 'Setpoint')