%% test �� gpm ��� ����ϵͳ
% y''=-50*exp(x),-1<=x<=1
% y(-1)=100,y(1)=200;
%% ���� 10�����
N=100;
%% ���� LGL ��
nodes=LGL_nodes(N);
nodesin=nodes(2:end-1);%�ڵ�
%% �����Ȩ
weights=LGL_weights(nodes);
%% ����΢�־���
Dmax=LGL_Dmatrix(nodes);
Dmax2=Dmax^2;
%% �ڵ��Ӧ�Ĳ���
D=Dmax(2:end-1,2:end-1);
D2=Dmax2(2:end-1,2:end-1);
%% �߽�����
y0=2;
y1=7;
%% ��������
B=exp(nodesin)-Dmax2(2:end-1,1)*y0-Dmax2(2:end-1,end)*y1;
ys=D2\B;
plot(nodesin,ys);