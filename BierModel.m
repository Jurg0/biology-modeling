% Glycolysis Model
% The Bier Model
function[dSdt]=BierModel(S,t);

% define metabolites
G=S(1);
T=S(2);

% define parameters
Vin=0.36;
k1=0.02;
kp=6;
Km=13;

% define rate functions
v1=Vin;
v2=k1*G*T;
v3=kp*T/(Km+T);

%define stoichiometry
dSdt(1)=v1-v2;
dSdt(2)=2*v2-v3;

end;

%the function returns the vector dSdt