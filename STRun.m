% Run SigTra: STRun.m

T=[0:0.1:10];
S0=rand(2,1);

S=lsode('SigTra',S0,T);
figure 1;
plot(T,S);
legend('P','P positiv')