%% Paramaters values
C1=2.2;%e-3;
C2=2.2;%e-3;
R1=0.47;%470;
R1prim=0.68;%680;
R12=4.7;%4700;
Rpbar=R1;%(R1*R1prim)/(R1+R1prim);
V1bar=4.9;

a11 = (1/Rpbar+1/R12)/C1;
a12=1/(C1*R12);
a21=1/(C1*R12);
a22=1/(C2*R12);
b=0.2/C1;
d=V1bar/(C1*Rpbar^2);

%% Minimum phase
SYS1=ss([-a11,a12;a21,-a22],[b,d;0,0],[0,10],0);
[num11,den11]=ss2tf([-a11,a12;a21,-a22],[b;0],[0,10],0);
GA=tf(num11,den11);
[num12,den12]=ss2tf([-a11,a12;a21,-a22],[d;0],[0,10],0);
HA=tf(num12,den12);


%% Non minimum phase
SYS2=ss([-a11,a12;a21,-a22],[b,d;0,0],[-10,20],0);
[num21,den21]=ss2tf([-a11,a12;a21,-a22],[b;0],[-10,20],0);
GB=tf(num21,den21);
[num22,den22]=ss2tf([-a11,a12;a21,-a22],[d;0],[-10,20],0);
HB=tf(num22,den22);


% subplot(2,1,1);
% step(SYS1);
% title('Minimum phase');
% subplot(2,1,2);
% step(SYS2);
% title('Non minimum phase');

%% Closed loop

Ti=11.5;
PB=30.5;
C_1=100/PB*tf([Ti 1],[Ti 0]);

TrA1=feedback(C_1*GA,1);
TvA1=feedback(HA,GA*C_1);

TvB2=tf([-100.83 9.75 0],[1, 1.16014-90.909/PB, 0.0935+8.8853/PB - 90.909/PB/Ti, 8.79/PB/Ti]);
TrB1=feedback(C_1*GB,1);
%TvB1=feedback(HB,GB*C_1);


Ti=11.5;
PB=162;
C_2=100/PB*tf([Ti 1],[Ti 0]);

TrA2=feedback(C_2*GA,1);
TvA2=feedback(HA,GA*C_2);

TvB2=tf([-100.83 9.75 0],[1, 1.16014-90.909/PB, 0.0935+8.8853/PB - 90.909/(PB*Ti), 8.79/(PB*Ti)]);
TrB2=feedback(C_2*GB,1);
%TvB2=feedback(HB,GB*C_2);

