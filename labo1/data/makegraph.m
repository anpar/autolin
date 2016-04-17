close all;
% 1 : t [s]
% 2 : setpoint level [cm]
% 3 : tank level [cm]
% 4 : initial flow u0 [ml.s^-1]
% 5 : command PI (du) [ml.s^-1]

filename = 'cl-10-0_ultimate.txt';
A = (importdata(filename));
plot(A(:,1),A(:,2),'r-');hold on;
plot(A(:,1),A(:,3),'b-');hold on;
%plot(A(:,1),A(:,4),'g-');hold on;
%plot(A(:,1),A(:,5),'y-');hold on;
%ylim([0,100]);
%plot(A(:,1),10.1*ones(size(A(:,1),1)),'r-');
%legend(...'setpoint level [cm]',... ...
%    'tank level [cm]','asymptotic value'...,'intial flow u_0 [ml.s^-1]','command PI [ml.s^-1]');
%    );
legend('setpoint level [cm]', 'tank level [cm]')

xlabel('time [s]');
ylabel('amplitude')

