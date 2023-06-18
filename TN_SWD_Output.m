T = 7;
n = 10;
p0 = (1/(T-1))*ones(1,T-1);
LB = 0*ones(1,T-1)';
UB = ones(1,T-1)';
l = 0;
u = 1;
mu = 0.1;
sgm = 0.01;

%S1 = TNA(n,T,p,mu,sgm)
%S2 = TN_SWD(n,T,p,l,u,mu,sgm)

[x1,fval1] = fmincon(@(p)TN_SWD(n,T,p,l,u,mu,sgm),p0,[],[],ones(1,T-1),1,LB,UB,[]);

[x2,fval2] = fmincon(@(p)TNA(n,T,p,mu,sgm),p0,[],[],ones(1,T-1),1,LB,UB,[]);

S = [x1 fval1; x2 fval2]