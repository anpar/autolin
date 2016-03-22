tau = 1.75;%1.5
K= 2.1917;
format long;
syms K1 K0 xsi

xsi = eval(solve(pi*xsi + log(0.02)*sqrt(1-xsi^2),xsi))
% passage 4 à 16

[K0, K1] = solve(xsi-(K1*K+1)/(2*sqrt(K0*K*tau)),4/(xsi*sqrt(K*K0/tau))-0.90*4*tau, K0, K1);
K0=eval(K0)
K1=eval(K1)

Tr = tf([K0], [tau (K1*K + 1) K0*K]);
step(Tr)
