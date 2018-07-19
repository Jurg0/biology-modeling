% LogMap.m

function [x]=LogMap(x,R)
x=R.*x.*(1-x);

% Ausführen: x=LogMap(x,R)