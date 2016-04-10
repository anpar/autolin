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

TR = tf([K0*K],[tau 1+K2*K K1*K K0*K])
step(TR)