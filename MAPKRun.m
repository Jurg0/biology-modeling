%Run MAPKcascade.m: MAPKRun

T=[0:1:1000];
S0=[0 300 0 300 0];
V=[0:0.01:0.5];

for i=1:length(V);
  v1=V(i);
  f=@(x,t) MAPKcascade(x,v1);
  [S,t]=lsode(f,S0,T);
  X(i,:)=S(end,:);
end;

figure 1
plot(T,S);
legend('x1','y0','y2','z0','z2','location','west');
xlabel('time t');
ylabel('concentration')

figure 2
plot(V,X(:,[1 3 5]));
xlabel('Stimulus');
ylabel('ERKpp');
legend('MAPKKK (RAF)','MAPKKp (MEK)','MAPKpp (ERK)','location','northwest')