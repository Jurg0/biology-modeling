% Glycolysis Model by Bier: Coupling cells
% TwoBier.m

function[dSdt]=TwoBier(S,t);

% define metabolites
G1=S(1);
T1=S(2);
G2=S(3);
T2=S(4);

% define parameters
Vin=0.36;
k1=0.02;
kp=6;
Km=13;

epsi=0.01;

%define stoichiometry
dSdt(1)=Vin-k1*G1*T1;
dSdt(2)=2*k1*G1*T1-kp*T1/(Km+T1)+epsi*(T2-T1);
dSdt(3)=Vin-k1*G2*T2;
dSdt(4)=2*k1*G2*T2-kp*T2/(Km+T2)-epsi*(T2-T1);

end;

%the function returns the vector dSdt