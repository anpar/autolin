format long;
syms xsi

K=2.16667;
tau = 1.38;%0.825;
D = 0.05;
t_R = 5;
alpha = 10;

xsi = eval(solve(pi*xsi + log(D)*sqrt(1-xsi^2),xsi))

omegan = 4/(5*xsi)
K0 = alpha*omegan^3*tau/K
K1 = tau*omegan^2*(1+2*alpha*xsi)/K
K2 = ((omegan*(alpha+2*xsi)*tau)-1)/K
