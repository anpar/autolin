filename = 'cl-2_5-2_ultimate.txt';
A = importdata(filename);
offset=20;
A=A(offset:end,1:5);
A(:,1)=A(:,1)-offset*0.1;
plot(A(:,1),A(:,2),'r-');hold on;
plot(A(:,1),A(:,3),'b-');hold on;

Bu = 0.0233;
Bv = -3.27;
A = -0.0345;

Tr = tf([Bu*Kp Bu*Kp*Ki],[1 Bu*Kp-A Bu*Kp*Ki])
step(10.1*Tr, 'g')

legend('setpoint level [cm]', 'tank level [cm]', 'theory')

xlabel('time [s]');
ylabel('amplitude')