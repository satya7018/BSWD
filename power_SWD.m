function y = power_SWD(n,T,rho,p,del,sgm,m,al)
  var = (sgm/(n*m))*Optimal_SWD(n,T,rho,p);
  %al = 0.05/2;
  q = norminv(1-al);
  y = normcdf(del/sqrt(var)-q);