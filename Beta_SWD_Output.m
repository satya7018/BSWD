T = 5;
n = 15;
p0 = (1/(T-1))*ones(1,T-1);
p =[0.4    0.1    0.2    0.3];
LB = 0*ones(1,T-1)';
UB = ones(1,T-1)';
al = 20;
bt = 10;
%s = Beta_SWD(n,T,p,al,bt)
[x1,fval1] = fmincon(@(p)(Beta_SWD(n,T,p,al,bt)),p0,[],[],ones(1,T-1),1,LB,UB,[])