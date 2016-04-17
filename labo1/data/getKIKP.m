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

options=optimset('Display','iter');   % Option to display output
x=fsolve(@myF,[1 1 1]);
KP=x(1)
KI=x(2)
omegan=x(3)

sqrt(Bu.*KP.*KI) %omegan
(Bu.*KP-A)./(2.*omegan) %xsi
(1./(omegan.*(xsi-sqrt((xsi.^2)-1)))) %tau



%% Method 2
tau_OL=28.3;
tau_CL=tau_OL/3;
KI2=-A
KP2=3/(Bu*tau_OL)

%[zeta, KI] = solve(zeta-(beta+1)/(2*sqrt(KI)),4/(sqrt(zeta)*(zeta-sqrt(zeta^2-1)))-tR, zeta, KI);
%KI=eval(KI)
%eval(zeta)
%KP=1/alpha

%end


