close all;
res1 = importdata('data/5-3-1-perturbation-min-phase.txt');
res2 = importdata('data/5-3-2-perturbation-non-min-phase.txt');

% time[s] SP[%] MV[%] PV[%]

%Plot the entire data set
plot(res1(:,1)-9, (res1(:,4)-28.77)/33.43, 'g'); hold on;
plot(res2(:,1)-9, (res2(:,4)-28.77)/33.43, 'r'); hold on;
plot(res1(:,1)-9, 0.02*ones(size(res1(:,1))), 'b');
title('Response to a perturbation in open loop')
xlabel('time [s]');
ylabel('normalized voltage');
xlim([res1(1,1) res1(end-10,1)])
ylim([-0.1 1.1])
legend('mnimum phase', 'non-minimum phase', '98% response')