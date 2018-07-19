% Glycolysis Model
% The Wolf Model
function[dSdt]=Wolfmodel(S,t);

% define metabolites
S1=S(1);
S2=S(2);
S3=S(3);
S4=S(4);
S5=S(5);
S6=S(6);
S6ex=S(7);
N2=S(8);
A3=S(9);

% define parameters
J0=0.05;
k1=0.55;
Ki=0.001;
k2=0.0098;
kGAPDHp=0.3238;
kGAPDHn=57.8231;
kPGKp=76.4111;
kPGKn=0.0237;
k4=0.08;
k5=0.0097;
k6=2;
k7=0.028;
k8=0.0857;
k9=80;
kappa=375;
phi=0.1;
A=0.004;
N=0.001;
n=4;
N1=N-N2;

% define rate functions
fA3=(1+(A3/Ki)^n)^(-1);
J=kappa*(S6-S6ex);
v1=k1*S1*A3*fA3;
v2=k2*S2;
v3=(kGAPDHp*kPGKp*S3*N1*(A-A3)-kGAPDHn*kPGKn*S4*A3*N2)/(kGAPDHn*N2+kPGKp*(A-A3));
v4=k4*S4*(A-A3);
v5=k5*S5;
v6=k6*S6*N2;
v7=k7*A3;
v8=k8*S3*N2;
v9=k9*S6ex;

% define stoichiometry
dSdt(1)=J0-v1;
dSdt(2)=v1-v2;
dSdt(3)=2*v2-v3-v8;
dSdt(4)=v3-v4;
dSdt(5)=v4-v5;
dSdt(6)=v5-v6-J;
dSdt(7)=phi*J-v9;
dSdt(8)=v3-v6-v8;
dSdt(9)=-2*v1+v3+v4-v7;

end;

% the function returns the vector dSdt