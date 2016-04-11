%%% Measure
clear all;
res = importdata('data/cl_speed_control_ultimate_done.txt');

% Plot the entire data set
figure();
plot(res(390:500,1) - res(390,1), res(390:500,5), 'r'); hold on;

%%% Theory
format long;

tau = 0.8;
K = 2.1917;

syms K1 K0 xsi
xsi = eval(solve(pi*xsi + log(0.02)*sqrt(1-xsi^2),xsi))
[K0, K1] = solve(xsi-(K1*K+1)/(2*sqrt(K0*K*tau)),4/(xsi*sqrt(K*K0/tau))-0.90*4*tau, K0, K1);

K0=eval(K0)
K1=eval(K1)

Tr = tf([K0*K], [tau (K1*K + 1) K0*K]);
t = res(390:500,1) - res(390,1);
y = step(12*Tr, t);
plot(t, y, 'g');
title('Angular speed control : step response in closed loop')
xlabel('time [s]');
ylabel('angular speed [rot/s]');
legend('Measurements', 'Model');