% LinearChainRun: LCRun.m

T=[0:0.1:20];
S0=[0 0 0];

S=lsode('LinearChain',S0,T);
plot(T,S);
legend('S1','S2','S3');
xlabel('time t');
ylabel('concentration S');
title('Concentracion!')