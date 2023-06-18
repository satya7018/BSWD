function y = Uniform_SWD(n,T,p,u,v)
 %T = 4;
 %p = [0.2 0.3 0.5];
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
b = sum(z)-sum(w);
c = (sum(z))^2-sum(q);
a = n*T-1;

x = b*(n*T-1)+n*c;
x1 = 1-(a*b)/x;
u1 = b+v*x;
u2 = b+u*x;

y = (1/(x*(v-u)))*(x1*log(u1/u2)+a*(v-u));




