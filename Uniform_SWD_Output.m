 
T = 5;
n = 40;
rho = 0.05;
p0 = (1/(T-1))*ones(1,T-1);
LB = 0*ones(1,T-1)';
UB = ones(1,T-1)';
u = 0;
v = 1;
[x,fval] = fmincon(@(p)(Optimal_SWD(n,T,rho,p)),p0,[],[],ones(1,T-1),1,LB,UB,[]);
[x1,fval1] = fmincon(@(p)(Uniform_SWD(n,T,p,u,v)),p0,[],[],ones(1,T-1),1,LB,UB,[]);
A = [x fval;x1 fval1]
a1 = 1+rho*(3*n-1);
b1 = (1+rho*(n*T-1));
p1 = a1/(2*b1);
p2 = (n*rho)/b1;

