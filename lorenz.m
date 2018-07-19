% lorenz.m
% Lorenz System

function[df]=lorenz(x,t);
r=45.92;
b=4;
sig=16;

dxdt= sig*(x(2)-x(1));
dydt=-x(1)*x(3)+r*x(1)-x(2);
dzdt= x(1)*x(2)-b*x(3);

df=[dxdt ; dydt ; dzdt];
end;