
C1=2.2e-3;
C2=2.2e-3;
R1=470;
R1prim=680;
R12=4700;
Rpbar=R1;%(R1*R1prim)/(R1+R1prim);
V1bar=49;

a11 = (1/Rpbar+1/R12)/C1;
a12=1/(C1*R12);
a21=1/(C1*R12);
a22=1/(C2*R12);
b=0.2/C1;
d=V1bar/(C1*Rpbar^2);

SYS1=ss([-a11,a12;a21,-a22],[b,d;0,0],[0,10],0);
SYS2=ss([-a11,a12;a21,-a22],[b,d;0,0],[-10,20],0);

subplot(2,1,1);
step(SYS1);
subplot(2,1,2);
step(SYS2);

