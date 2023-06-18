function y = Beta_SWD_Prod(n,T,rho,p,al,bt)
y = Optimal_SWD(n,T,rho,p).*betapdf(rho,al,bt);