function y = Optimal_SWD(n,T,rho,p)
 %T = 6;
 %p = [0.25 0.2 0.1 0.2 0.25];
 %p = [0.25 0.2 0.1 0.2 0.25];
%  p = [0.25 0.1 0.2 0.2 0.25];
%  %p = [0.25 0.2 0.2 0.1 0.25];
%  n = 10;
%  rho = 0.3;
%  z = [];
 
for t = 1:T-1
 z(t) = t*p(t);   
end
w = [];
s = 0;
for t = 1:T-1
 w(t) = (sum(p(s+t:T-1)))^2;   
end
q = [];
for t = 1:T-1
 q(t) = (t^2)*p(t);   
end
b = sum(z)-sum(w);
c = (sum(z))^2-sum(q);
a = n*T-1;

Nm = (1+rho*a);
Dm = Nm*b+n*rho*c;
y = Nm/Dm;



