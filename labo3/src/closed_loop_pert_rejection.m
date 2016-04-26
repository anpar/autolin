close all;
res1 = importdata('data/5-4-1-min-phase-cl-pert.txt');
res2 = importdata('data/5-4-2-non-min-phase-cl-pert-chaos.txt');

% time[s] SP[%] MV[%] PV[%]

%Plot the entire data set
plot(res1(:,1)-1, res1(:,4), 'g'); hold on;
plot(res2(:,1)-1, res2(:,4), 'r'); hold on;
plot(res1(:,1)-1, res1(:,2), 'b');
title('Response to a perturbation in closed loop')
xlabel('time [s]');
xlim([0 70]);
ylabel('normalized voltage');
legend('mnimum phase', 'non-minimum phase')