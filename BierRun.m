% Run BierModel: BierRun.m

T=[0:0.5:500];
S0=[14 89];

S=lsode('BierModel',S0,T);
figure 1
plot(T,S);
legend('G','T');
xlabel('time t');
ylabel('concentration S');
title('Bier Model')

figure 2
plot(S(:,1),S(:,2));
xlabel('glucose G');
ylabel('ATP T')