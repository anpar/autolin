ol_identification

KP1=18.97;
KI1=0.0891;
C1=KP1*tf([1 KI1],[1 0]);

KP2=4.55;
KI2=0.035;
C2=KP2*tf([1 KI2],[1 0]);

Tr1=feedback(C1*SYSG,1);
Tr2=feedback(C2*SYSG,1);
zpk(Tr1)

myTr1=Bu*KP1*tf([1 KI1],[1 (Bu*KP1-A) Bu*KP1*KI1]); %sanity check
myTr2=Bu*KP2*tf([1 KI2],[1 (Bu*KP2-A) Bu*KP2*KI2]); %sanity check

step(Tr1,Tr2)
legend('Sans simplification', 'Avec simplification pôle-zéro')