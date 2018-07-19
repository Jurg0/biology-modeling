%deterministic trajectory: StochDeter.m

function[dSdt]=StochDeter(S,t);

b=5; A0=100; dm=0.35; da=0.2; omega=2;

ka=b*dm;
km=A0*da/b;

M=S(1); A=S(2);

w1=omega*km;
w2=dm*M;
w3=ka*M;
w4=da*A;

dSdt(1)=km-dm*M; %RNA
dSdt(2)=ka*M-da*A; %Protein

end;