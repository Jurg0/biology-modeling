% Run coupled Biermodel (TwoBier.m): TwoBierRun.m

T=[0:0.5:1000];
S0=[1 1 10 5];

S=lsode('TwoBier',S0,T);
figure 1
plot(T,S(:,[1 3]));
legend('G1','G2');
xlabel('time t');
ylabel('concentration S');
title('coupled Bier Model')

figure 2
plot(S(:,1),S(:,2),'b-');
hold on
plot(S(:,3),S(:,4),'r-');
hold off
xlabel('glucose G');
ylabel('ATP T');
title('coupled Bier Model phaseplot')

figure 3
plot(T,(S(:,4)-S(:,2)));
xlabel('time t');
ylabel('T2 - T1');
title('coupled Bier Model difference')