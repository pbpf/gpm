%% F
function [f1,f2,f3]=F(X,U,t)
f1=X(1)+U(1);
f2=X(1)-U(2);
f3=X(2)+X(3)-U(1);
end