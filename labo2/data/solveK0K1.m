tau = 1.38;%0.825;
%xsi = -6.303e-3;
K=2.16667;
format long;
syms K1 K0 xsi
xsi = eval(solve(pi*xsi + log(0.02)*sqrt(1-xsi^2),xsi))
% passage 4 à 16

[K0,K1] =solve(xsi-(K1*K+1)/(2*sqrt(K0*K*tau)),4/(xsi*sqrt(K*K0/tau))-0.90*4*tau, K0, K1);
K0=eval(K0)
K1=eval(K1)
