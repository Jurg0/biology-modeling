%DSBmodel.m

function[dXdt]=DSBmodel(x,t);

p53i=x(1);
p53a=x(2);
mdm2=x(3);
wip1=x(4);
atm=x(5);

p1=0.9; p2=10;
p3=0.9; p4=0.2;
p5=0.25; p6=5;
p7=0.5; p8=0.4;

d1=5; d2=2;
d3=1.4; d4=0.14;
d5=0.1; d6=1;
d7=0.7; d8=7.5;
d9=50; d10=2;
d11=0.9;

na=4; Ka=1;
ni=4; Ki=0.2;

dmg=1; c=0;

p53=p53i+p53a;

v1=p1;
v2=d4*wip1*p53a;
v3=d1*mdm2*p53i;
v4=p2*p53i*atm.^na./(atm.^na+Ka);
v5=d2*p53i;
v6=d3*mdm2*p53a;
v7=p3*p53a;
v8=p4;
v9=d5*atm*mdm2;
v10=d6*mdm2;
v11=p5*p53;
v12=d7*wip1;
v13=p6*(dmg-c);
v14=d9*atm*wip1.^ni./(wip1.^ni+Ki.^ni);
v15=d8*atm;


dXdt(1)=v1+v2-v3-v4-v5;
dXdt(2)=v4-v2-v6;
dXdt(3)=v7+v8-v9-v10;
dXdt(4)=v11-v12;
dXdt(5)=v13-v14-v15;

end;