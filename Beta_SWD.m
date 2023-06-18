function y = Beta_SWD(n,T,p,al,bt)
y = integral(@(rho)Beta_SWD_Prod(n,T,rho,p,al,bt),0,1,'arrayvalued', true);