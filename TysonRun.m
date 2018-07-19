%Run Tyson.m: TysonRun

t=[0:1:500];
S0=rand(2,1);

S=lsode('Tyson',S0,t);

plot(t,S(:,1),'k-');
hold on;
plot(t,S(:,2),'g--');
legend('u (MPF)','v','location','nortwest');
xlabel('time t');
ylabel('concentration');
hold off