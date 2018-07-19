% Run GoldKoshSwitch: GKSRun.m

T=[0:0.1:10];
S0=rand(2,1);

S=lsode('GoldKoshSwitch',S0,T);
plot(T,S);
legend('P','P positiv')