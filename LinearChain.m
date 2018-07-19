% Metabolismus Modell
% simple linear chain with irreversible MM kinetics
function[dSdt]=LinearChain(S,t);

% define metabolites
S1=S(1);
S2=S(2);
S3=S(3);

% define parameters
influx=1;
Km1=1; Vm1=2;
Km2=2; Vm2=3;
Km3=3; Vm3=4;
if (t>5),influx=0.1; end;

% define rate functions
v0=influx; % constant
v1=Vm1*S1/(Km1+S1);
v2=Vm2*S2/(Km2+S2);
v3=Vm3*S3/(Km3+S3);

%define stoichiometry
dSdt(1)=+v0-v1;
dSdt(2)=+v1-v2;
dSdt(3)=+v2-v3;

end;

%the function returns the vector dSdt