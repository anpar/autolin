
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
[numG,denG] = ss2tf(A,[Bu,Bv],C,D,1)
[numH,denH] = ss2tf(A,[Bu,Bv],C,D,2)
SYSG = tf(numG, denG)
SYSH = tf(numH, denH)



%syms s

%G = C*(s-A)^-1*Bu+D;
