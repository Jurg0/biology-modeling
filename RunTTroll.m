%Run TysonTroll.m with k6 time-dependent: RunTTroll

T=[0:1:500];
S0=rand(2,1);
K6=[0.3:0.1:2];

for i=1:length(K6);
  k6=K6(i);
  f=@(x,t) TysonTroll(x,k6);
  [S,t]=lsode(f,S0,T);
  X(i,:)=S(end,:);
end;

plot(T,S(:,1),'k-');
hold on;
plot(T,S(:,2),'g--');
legend('u (MPF)','v');
xlabel('time t');
ylabel('concentration');
hold off