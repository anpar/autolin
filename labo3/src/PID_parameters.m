
alpha=10;
tR=45;

syms omegan dzeta PB Ti
sol = solve(alpha*omegan + 2*dzeta*omegan - 1.161,...
    omegan^2+alpha*omegan*2*dzeta - 0.09353 -8.792/(PB),...
    alpha*omegan^3 - 8.792/(PB*Ti),...
    tR*omegan*(dzeta-sqrt(dzeta^2-1))-4);

PB=eval(sol.PB)
Ti=eval(sol.Ti)
omegan=eval(sol.omegan)
dzeta=eval(sol.dzeta)
