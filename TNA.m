function y = TNA(n,T,p,mu,sgm)
% T = 7;
% n = 10;
% p = (1/(T-1))*ones(1,T-1);
% mu = 0.1;
% sgm = 0.01;
% rh0 = 0.2;
 z = [];
 
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
x1 = n*T-1;
x2 = sum(z)-sum(w);
x3 = x1*x2 + n*((sum(z))^2-sum(q));
u = (1-mu)/sgm;
l = -mu/sgm;
w1 = (x3-x1*x2)/(x3*(normcdf(u)-normcdf(l)));
mu1 = x2+mu*x3;
w2 = mu1^2 - (sgm*x3)^2;
%w3 = mu1/w2;
q1 = sgm^2*x3 - mu*(x2+x3);
q2 = sgm^2*x3 + (1 - mu)*(x2+x3);

z1 = q1/(sgm*sqrt(w2));
z2 = q2/(sgm*sqrt(w2));

e1 = (mu1/w2)*(1-normcdf(z1));
e2 = (mu1/w2)*(1-normcdf(z2));

y = x1/x3 + w1*(e1-e2);


