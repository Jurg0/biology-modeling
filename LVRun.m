% LotkaVolterraRun: LVRun.m


T=[0:0.1:50];
x=lsode('LotkaVolterra',[1 1],T);

plot(x(:,1),x(:,2),'k-');
hold on
plot([d/g d/g],[0 3*a/b],'r-');
plot([0 2*d/g],[a/b a/b],'b-')