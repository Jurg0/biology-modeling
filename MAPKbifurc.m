%Run MAPKcascade.m
%bifurcation

T=[0 5000:5:10000];
S0=[0 300 0 300 0];
V=[0:0.1:10];

for i=1:length(V);
  v1=V(i);
  f=@(x,t) MAPKinhib(x,v1);
  [S,t]=lsode(f,S0,T);
  X(i,:)=[min(S(2:end,5)) max(S(2:end,5))];
end;

figure 3
plot(V,X(:,1));
hold on;
plot(V,X(:,2),'r-');
xlabel('Stimulus');
ylabel('ERK^{PP}');
hold off