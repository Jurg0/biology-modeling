% Chaox.m

R=[2.5:0.01:4];
x=rand(size(R));

for i=1:200;
x=LogMap(x,R);
end;

for i=1:200;
x(i+1,:)=LogMap(x(i,:),R);
end;

plot(R,x,'k.')