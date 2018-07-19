% simpleODEsolver.m

T=[0:0.1:10];
x0=[0:0.2:2];
x=lsode('simple',x0,T);
plot(T,x)