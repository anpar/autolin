close all;
resA = importdata('sinus_non_linearity.txt');
figure()
[ax ha1 ha2]=plotyy(resA(:,1),resA(:,5),resA(:,1),resA(:,4))%,'angular speed','duty cycle (%)');
set(ax(1),'ylim',[-7.5 7.5]);
set(ax(2),'ylim',[-40 40]);

axes(ax(1)); ylabel('angular speed');
axes(ax(2)); ylabel('duty cycle (%)');