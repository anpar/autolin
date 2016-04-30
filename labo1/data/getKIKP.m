%function getKIKP

%syms zeta KI KP omegan
tau_OL=28.2;
tau = tau_OL/3;
A = -0.0345;
Bu=0.02326;
xsi=1.2;

%% Method 1
% [zeta,omegan,KP,KI] = solve(1==tau*omegan*(zeta-sqrt((zeta^2)-1)), omegan==sqrt(Bu*KP*KI),...
%     zeta ==1.5, zeta*2*sqrt(Bu*KP*KI)==Bu*KP+A,zeta,omegan,KP,KI);
% 
% zeta=eval(zeta)
% omegan=eval(omegan)
% KP=eval(KP)
% KI=eval(KI)

x=fsolve(@myF,[1 1 1]);
KP1=x(1)
KI1=x(2)


%% Method 2
tau_OL=28.3;
tau_CL=tau_OL/3;
KP2=3/(Bu*tau_OL)
KI2=-A

%[zeta, KI] = solve(zeta-(beta+1)/(2*sqrt(KI)),4/(sqrt(zeta)*(zeta-sqrt(zeta^2-1)))-tR, zeta, KI);
%KI=eval(KI)
%eval(zeta)
%KP=1/alpha

%end


