% LogMap.m

function [x]=LogMap(x,R)
x=R.*x.*(1-x);

% Ausf�hren: x=LogMap(x,R)