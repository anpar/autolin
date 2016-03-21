function myimport
close all;
% t [s] || setpoint level [cm] || tank level [cm] || initial flow u0 [ml.s^-1] || command PI (du) [ml.s^-1]

filename = '2-closed-loop_3-1.txt';
A = (importdata(filename));
plot(A(:,1),A(:,2),'r*');
hold on;
plot(A(:,1),A(:,3),'b-');
hold on;
plot(A(:,1),A(:,4),'g-');
hold on;
plot(A(:,1),A(:,5),'y-');
ylim([0,100]);


end