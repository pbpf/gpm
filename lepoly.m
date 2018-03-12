function [dy,y]=lepoly(N,x)
%% Legendre多项式P_N 和其导数的值 N>=1 
%  利用Legendre多项式的性质：L_0(x)=1,L_1(x)=x,L_2(x)=3/2*x^2-1/2
%                          (n+1)L_n+1(x)=(2n+1)x*L_n(x)-n*L_n-1(x),n>=1
%                          L_N(1)==1;l_N(-1)=(-1)^N;
%  connor 2018/3/12 edit
L0=1;
L1=x;
dL0=0;
dL1=1;
for n=1:N-1
    Lx=(2*n+1).*x.*L1-n*L0;
    dLx=(2*n+1).*L1+(2*n+1).*x.*dL1-n*dL0;
    L0=L1;
    dL0=dL1;
    L1=Lx/(n+1);
    dL1=dLx/(n+1);
end
dy=dL1;
y=L1;