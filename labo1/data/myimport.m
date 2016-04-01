close all;
% t [s] || setpoint level [cm] || tank level [cm] || initial flow u0 [ml.s^-1] || command PI (du) [ml.s^-1]

% 1 : 


filename = 'exp1_PI_2_5-2_0.txt';
A = (importdata(filename));
%plot(A(:,1),A(:,2),'r*');hold on;
plot(A(:,1),A(:,3),'b-');hold on;
%plot(A(:,1),A(:,4),'g-');hold on;
%plot(A(:,1),A(:,5),'y-');hold on;
%ylim([0,100]);
plot(A(:,1),9.84*ones(size(A(:,1),1)),'r-');
legend(...'setpoint level [cm]',... ...
    'tank level [cm]','asymptotic value'...,'intial flow u_0 [ml.s^-1]','command PI [ml.s^-1]');
    );
xlabel('time [s]');

