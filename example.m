%% 用 gpm 求解 二阶系统
% y''=-50*exp(x),-1<=x<=1
% y(-1)=2,y(1)=7;
%% 边界条件
y0=2;
y1=7;
%% 假设 10个配点
N=20;
%% 计算 LGL 点
nodes=LGL_nodes(N);
nodesin=nodes(2:end-1);%内点
%% 计算加权
weights=LGL_weights(nodes);
%% 计算微分矩阵
Dmax=LGL_Dmatrix(nodes);
Dmax2=Dmax^2;
%% 内点对应的部分
D=Dmax(2:end-1,2:end-1);
D2=Dmax2(2:end-1,2:end-1);

%% 建立方程
B=exp(nodesin)-Dmax2(2:end-1,1)*y0-Dmax2(2:end-1,end)*y1;
ys=D2\B;

plot(nodesin,ys);
