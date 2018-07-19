% Glycolysis Model with allosteric inhibitor
% SimpleGlycolysis.m

function [dSdt]=SimpleGlycolysisInhibit(S,t);

% define metabolites
G=S(1);
TP=S(2);
P=S(3);
ATP=S(4);

% define parameters
A_total=2;
ADP=A_total-ATP;
Gx=1; % internal glucose influx

k0=3;
k1=2;
k2=1;
k3=1.4;
k4=1;

Vm5=1;
Km5=1;

% inhibitor parameters
kATP=5;
KI=0.1;
n=4;

% higher ATP consumption at t>30 (optional)
if (t>30), Vm5=1.5; end;

% define rate equations (inhibitor)
fATP=kATP/(1+(ATP/KI)^n);
v0=k0*(Gx-G);
v1=fATP*k1*G*ATP;
v2=k2*TP*ADP;
v3=k3*P;
v4=k4*TP;
v5=Vm5*ATP/(Km5+ATP);

% define equations
dSdt(1)=v0-v1;
dSdt(2)=+2*v1-v2-v4;
dSdt(3)=+v2-v3;
dSdt(4)=-2*v1+2*v2-v5;

end;