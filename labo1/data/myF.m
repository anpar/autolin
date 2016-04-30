function out =myF(x)
xsi=1.2;
tau_OL=28.2;
tau=tau_OL/3;
A=-0.0345;
Bu=0.02326;

KP=x(1);
KI=x(2);
omegan=x(3);

out1=omegan-sqrt(Bu.*KP.*KI);
out2=xsi-(Bu.*KP-A)./(2.*omegan);
out3=tau-(1./(omegan.*(xsi-sqrt((xsi.^2)-1))));

out=[out1;out2;out3];

end