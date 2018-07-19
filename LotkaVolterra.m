% LotkaVolterra.m

function [df]=LotkaVolterra(x,t);

X=x(1);
Y=x(2);

a=1;
b=2;
g=1.5;
d=2;

dxdt=a*X-b*X*Y;
dydt=g*X*Y-d*Y;

df=[dxdt ; dydt];
