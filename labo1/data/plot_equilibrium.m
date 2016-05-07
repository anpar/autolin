filename = 'open_loop_ultimate.txt';
A = importdata(filename);
offset=20;
A=A(offset:end,1:5);
A(:,1)=A(:,1)-offset*0.1;
plot(A(:,1),A(:,3),'b-');hold on;
plot(A(:,1),10.1*ones(size(A(:,1),1)),'r-');
legend(...'setpoint level [cm]',... ...
    'tank level [cm]','asymptotic value'...,'intial flow u_0 [ml.s^-1]','command PI [ml.s^-1]');
    )
xlabel('time [s]');
xlim([0 300])
ylabel('amplitude')