% Signalling dynamics
% covalentcycle.m

function[dPdt]=covalentcycle(P,v1,v2,A,Ptot);

dPdt=v1*A*(Ptot-P)-v2*P;

end;