close all;
res1 = importdata('data/5-4-1-min-phase-cl-pert.txt');
res2 = importdata('data/5-4-2-non-min-phase-cl-pert-chaos.txt');
res3 = importdata('data/5-4-3-non-min-phase-stabilized-ultimate-2.txt');

% time[s] SP[%] MV[%] PV[%]

%Plot the entire data set
plot(res1(:,1)-1, res1(:,4), 'g'); hold on;
plot(res2(:,1)-1, res2(:,4), 'r'); hold on;
plot(res3(:,1)-1, res3(:,4), 'b'); hold on
plot(res1(:,1)-1, res1(:,2), 'k');
title('Response to a perturbation in closed loop')
xlabel('time [s]');
xlim([0 90]);
ylabel('voltage');
legend('mnimum phase', 'non-minimum phase', 'stabilized non-minimum phase')