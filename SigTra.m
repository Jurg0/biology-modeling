% Models of signal transduction
% covalent modification cycles

function[dPdt]=SigTra(S,T);

P=S(1);
Pp=S(2);

% define parameters
A=2;
k1=3;
k2=4;

v1=k1.*A.*P;
v2=k2.*Pp;

dPdt(1)=v2-v1;
dPdt(2)=v1-v2;

end;