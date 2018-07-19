%Run StochDeter.m: StochDeterRun

t=[0:1:300];
S0=[0 0];

Stoch=StochExp(300,2);

S=lsode('StochDeter',S0,t);

figure 1
plot(t,S(:,1))
hold all;
plot(Stoch(:,1),Stoch(:,2));
legend('deterministic','stochastic');
xlabel('time t');
ylabel('mRNA')
hold off;

figure 2
plot(t,S(:,2));
hold all;
plot(Stoch(:,1),Stoch(:,3));
legend('deterministic','stochastic')
xlabel('time t');
ylabel('Protein');
hold off

figure 3
plot(Stoch(:,2),Stoch(:,3));
xlabel('mRNA');
ylabel('Protein')