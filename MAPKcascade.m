%Kinase cascades (Kholodenko et al. 2000)
%MAPKcascade.m

function[dSdt]=MAPKcascade(S,v1);

K1=10;
v2=0.25;K2=8;
v3=0.025;K3=15;
v4=0.025;K4=15;
v5=0.75;K5=15;
v6=0.75;K6=15;
v7=0.025;K7=15;
v8=0.025;K8=15;
v9=0.5;K9=15;
v10=0.5;K10=15;

xtot=100;
ytot=300;
ztot=300;

x1=S(1);
y0=S(2);
y2=S(3);
z0=S(4);
z2=S(5);

x0=xtot-x1;
y1=ytot-y0-y2;
z1=ztot-z0-z2;

nu1=(v1*x0)/(K1+x0);
nu2=(v2*x1)/(K2+x1);
nu3=(v3*x1*y0)/(K3+y0);
nu4=(v4*x1*y1)/(K4+y1);
nu5=(v5*y2)/(K5+y2);
nu6=(v6*y1)/(K6+y1);
nu7=(v7*y2*z0)/(K7+z0);
nu8=(v8*y2*z1)/(K8+z1);
nu9=(v9*z2)/(K9+z2);
nu10=(v10*z1)/(K10+z1);

dSdt(1,1)=nu1-nu2;
dSdt(2,1)=nu6-nu3;
dSdt(3,1)=nu4-nu5;
dSdt(4,1)=nu10-nu7;
dSdt(5,1)=nu8-nu9;

endfunction;