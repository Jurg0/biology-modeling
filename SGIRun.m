% Glycolysis Model
% Run SimpleGlycolysisInhibit.m: SGIRun.m

T=[0:0.1:50];
S0=[1 1 1 1];

S=lsode('SimpleGlycolysisInhibit',S0,T);
plot(T,S);
legend('G','TP','P','ATP');
xlabel('time t');
ylabel('concentration S');
title('Glycolysis')