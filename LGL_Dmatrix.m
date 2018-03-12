%% ���� Lagrange-Gauss-Lobatto�ڵ� ��Ӧ��һ��΢�־���
% LGL_Dmatrix.m
%--------------------------------------------------------------------------
% D = LGL_Dmatrix(tau)
% tau: LGL nodes
%   D: differentiation matrix
%--------------------------------------------------------------------------
function D = LGL_Dmatrix(tau)
    % number of nodes
    n = length(tau);%%n>=2;
    N=n-1;
    xx = tau; y = lepoly(N,xx);
    D = (xx./y)*y'-(1./y)*(xx.*y)'; % compute L_{n-1}(x_j) (x_k-x_j)/L_{n-1}(x_k);     
                                    % 1/d_{kj} for k not= j (see (3.203)) 
    D = D + eye(n);                 % �Խ���  +1,��������                            
    D = 1./D; 
    D = D - eye(n);                 %�Խ��߻ָ�  0
    D(1,1) = -N*(N+1)/4; D(n,n) = -D(1,1);  % update the diagonal entries  
end