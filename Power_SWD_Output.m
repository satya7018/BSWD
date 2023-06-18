
T = 9;
n = 10;
rho = 0.02;
N = 8;
al = 0.05/2;
sgm = 1;
del = 0.35;
p0 = (1/(T-1))*ones(1,T-1);
LB = 0*ones(1,T-1)';
UB = ones(1,T-1)';
u = 0;
v = 0.2;
[p1,fval1] = fmincon(@(p)(Optimal_SWD(n,T,rho,p)),p0,[],[],ones(1,T-1),1,LB,UB,[]);
[p2,fval2] = fmincon(@(p)(Uniform_SWD(n,T,p,u,v)),p0,[],[],ones(1,T-1),1,LB,UB,[]);
power1 = [];
power2 = [];
power3 = [];
eff = [];
i=1;
for rho1 = 0.015:0.02:1
 [p3,fval3] = fmincon(@(p)(Optimal_SWD(n,T,rho1,p)),p0,[],[],ones(1,T-1),1,LB,UB,[]);
 %eff(i) = fval3/Optimal_SWD(n,T,rho1,p1);
 power1(i) = power_SWD(n,T,rho1,p3,del,sgm,N,al);
 power2(i) = power_SWD(n,T,rho1,p1,del,sgm,N,al);
 power3(i) = power_SWD(n,T,rho1,p2,del,sgm,N,al);
 i = i+1;
end 
rho2 = 0.015:0.02:1;
%plot(rho2,eff)
%plot(rho2,power1,'-o',rho2,power2,'-*',rho2,power3,'-d')

% power = [power1 power2]
 
 
 
 