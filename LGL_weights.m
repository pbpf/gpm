%%--------------------------------------------------------------------------
% 计算  Lagrange-Gauss-Lobatto节点对应的加权
% 即 解方程 INT(L_K(x)*w(x),x,a,b)==sum(w_i,p_k(x_i),i,0,N),0<=k<=N
% wi=2/(N*(N+1))*1/(L_N(xi)^2)
%%
% LGL_weights.m
%--------------------------------------------------------------------------
% w = LGL_weights(tau)
% tau: LGL nodes
% w: Gaussian quadrature weights
%--------------------------------------------------------------------------
function w = LGL_weights(tau)
    N = length(tau)-1;% N>=1;
    [~,y] = lepoly(N,tau(2:end-1));
    w = 2/(N*(N+1))*[1;1./y.^2;1]; 
end