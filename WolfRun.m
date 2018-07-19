% Run WolfModel: WolfRun.m

T=[150:1:200];
S0=rand(9,1);

S=lsode('Wolfmodel',S0,T);
figure 1
plot(T,S(:,8));
hold on;
plot(T,S(:,9),'r-');
legend('NADPH','ATP');
xlabel('time t');
ylabel('concentration S');
title('Wolf Model');
hold off