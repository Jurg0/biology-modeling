%Stochastic simulation of gen expression
%StochExp.m

function[S]=StochExp(zeit,omega);

if (nargin<2), omega=1;
if (nargin<1), zeit=100;
end; end;

b=5; A0=100; dm=0.35; da=0.2;

ka=b*dm;
km=A0*da/b;

M=0; A=0;
t=0; ix=1;

while (t<zeit);

S(ix,:)=[t M/omega A/omega]; ix=ix+1;

w1=omega*km;
w2=dm*M;
w3=ka*M;
w4=da*A;

rate=w1+w2+w3+w4;

dt=-log(1-rand)/rate;
t=t+dt;

rate=rate*rand;
rate=rate-w1; if (rate<0), M=M+1; continue; end;
rate=rate-w2; if (rate<0), M=M-1; continue; end;
rate=rate-w3; if (rate<0), A=A+1; continue; end;
rate=rate-w4; if (rate<0), A=A-1; continue; end;
end;
endfunction;