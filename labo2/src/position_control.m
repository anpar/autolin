%%% Measure
clear all;
res = importdata('data/cl_angular_control_ultimate_done.txt');

% Plot the entire data set
figure();
t = res(1001:1275,1) - res(1001,1);
plot(t, res(1001:1275,6), 'r'); hold on;

%%% Theory
format long;
syms xsi

K=2.1917;
tau = 0.8;
D = 0.05;
t_R = 5;
alpha = 10;

xsi = eval(solve(pi*xsi + log(D)*sqrt(1-xsi^2),xsi))

omegan = 4/(t_R*xsi)
K0 = alpha*omegan^3*tau/K
K1 = tau*omegan^2*(1+2*alpha*xsi)/K
K2 = ((omegan*(alpha+2*xsi)*tau)-1)/K

Tr = tf([K0*K],[tau 1+K2*K K1*K K0*K])
y = step(10*Tr, t);
plot(t, y, 'g');
title('Angular position control : step response in closed loop')
xlabel('time [s]');
ylabel('angular position [deg]');
legend('Measurements', 'Model')