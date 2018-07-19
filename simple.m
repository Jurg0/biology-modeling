% simple.m

function[dxdt]=simple(x,t);
c=0.7;
k=0.5;
dxdt=c-k*x;
end;