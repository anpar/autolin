
g=981;
SR = 43;
SS = 30/sqrt(2*g*9.84);

xbar=9.84;
ubar=30;
vbar=0;

A = -g*SS/(SR*sqrt(2*g*xbar));
Bu = 1/SR;
Bv = -sqrt(2*g*xbar)/SR;
C = 1;
D = [0,0];

syms s

myG = eval(C*(s-A)^-1*Bu)

SYS = ss(A,[Bu,Bv],C,D);
[num,den] = ss2tf(A,[Bu,Bv],C,D,2)
SYS2 = tf(num, den)



%syms s

%G = C*(s-A)^-1*Bu+D;
