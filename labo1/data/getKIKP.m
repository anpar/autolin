function getKIKP

syms zeta KI
tR = 10;
alpha = 0.02326;
beta = 0.03545;
[zeta, KI] = solve(zeta-(beta+1)/(2*sqrt(KI)),4/(sqrt(zeta)*(zeta-sqrt(zeta^2-1)))-tR, zeta, KI)
eval(KI)
eval(zeta)
KP=1/alpha

end