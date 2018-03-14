# gpm
����Ŀ��ͼ������˹α�׷���matlab�������룬���ṩ������Թ���չ��

-- leploy.m         ����Legendre����ʽ

-- leploy_dy.m      ����Legendre����ʽ���䵼��

-- LGL_nodes.m      ����Lagrange-Gauss-Lobatto��

-- LGL_weight.m     ����Lagrange-Gauss-Lobatto��ļ�Ȩ

-- LGL_Dmatrix.m    ����Lagrange-Gauss-Lobatto���һ��΢�־���

-- example.m        ������gpm������ϵͳ
-- example2.m        ������gpm���һ��΢�ַ�����

```flow
st=>start: start
op1=>operation: 给出Y的初值Y_0|past
op=>operation: 给出Y的更新Y_k|current
sub1=>subroutine: 构造qp子问题求解
op3=>operation: 在Y_K出泰勒展开到二阶项
op4=>operation: 解二次规划
cond=>condition: 是否足够精确？
e=>end

st->op1->op->cond
cond(yes)->e
cond(no)->sub1->op
```
构造qp子问题求解:
```flow
st=>start: start
op3=>operation: 在Y_K出泰勒展开到二阶项,得到二次规划问题
op4=>operation: 使用quadprog求解
e=>end

st->op3->op4->e
```