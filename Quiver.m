% QuiverPlot: Quiver.m

[xg,yg]=meshgrid(0.1:0.1:3);
[n,m]=size(xg);

for i=1:n;
for j=1:m;
df=LotkaVolterra([xg(i,j) yg(i,j)],1);
df=df/norm(df);
u(i,j)=df(1);
v(i,j)=df(2);
end;
end;

h=quiver(xg,yg,u,v,0.5)