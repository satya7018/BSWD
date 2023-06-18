
n = 10;
T = 7;
rho = 0.01;
p1 = [0.1 0.1 0.3];
p = [p1 fliplr(p1)];
%p = fliplr(p);

r = Optimal_SWD(n,T,rho,p);
 
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
x1= n*T-1;
x2 = b;
x3 = x1*x2+n*c;
[x1 x2 x3]

