function y = TN_SWD(n,T,p,l,u,mu,sgm)
y = integral(@(rho)TN_SWD_Prod(n,T,rho,p,l,u,mu,sgm),l,u,'arrayvalued', true);