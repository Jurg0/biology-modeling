% Run covalentcycle: cocycRun.m

v1=1;
v2=1;
A=2.5; %kinase
Ptot=1;
T=[0:0.01:3];

f=@(x,t)covalentcycle(x,v1,v2,A,Ptot);
P=lsode(f,[0:0.2:0.8],T);
plot(T,P)