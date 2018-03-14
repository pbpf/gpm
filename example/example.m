%% example2 一阶常微分方程组的情形
% X(x)=[x1(x);x2(x);...;xn(x)];
% U(x)=[u1(x);u2(x);...;um(x)];m个控制变量
% F(x)=[f1(X,U,t);f2(X,U,t);...;fm(X,U,t)];m列
% assume we know F
% assume t [-1,1]
F1=@F;
%% 离散点数
N=100;