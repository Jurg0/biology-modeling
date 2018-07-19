%Run MAPKinhib.m: MAPKiRun

T=[0:1:10000];
S0=[0 300 0 300 0];
v1=2.5;

f=@(x,T) MAPKinhib(x,v1);
S=lsode(f,S0,T);

figure 1
plot(T,S(:,[1 3 5]));
legend('MAPKKK (RAF)','MAPKKp (MEK)','MAPKpp (ERK)')
xlabel('time t');
ylabel('MAPK concentration')

figure 2
plot3(S(:,1),S(:,5),S(:,3),'m-');
xlabel('RAF');
ylabel('ERK');
zlabel('MEK')