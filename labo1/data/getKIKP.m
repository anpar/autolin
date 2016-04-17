function getKIKP

syms zeta KI KP omegan
tau=28.2;
tR = 4*tau/3;
A = -0.03545;
Bu=0.02326;

%% Mechod 1
[zeta,omegan,KP,KI] = solve(4-tau*omegan*(zeta-sqrt(zeta^2-1)), omegan-sqrt(Bu*KP*KI),...
    zeta -1.5, zeta-(Bu*KP-A)/(2*sqrt(Bu*KP*KI)),zeta,omegan,KP,KI)

zeta=eval(zeta)
omegan=eval(omegan)
KP=eval(KP)
KI=eval(KI)


%% Method 2
tau_OL=28.3;
tau_CL=tau_OL/3;
KI2=-A
KP2=1/(Bu*tau_OL)

%[zeta, KI] = solve(zeta-(beta+1)/(2*sqrt(KI)),4/(sqrt(zeta)*(zeta-sqrt(zeta^2-1)))-tR, zeta, KI);
%KI=eval(KI)
%eval(zeta)
%KP=1/alpha

end
