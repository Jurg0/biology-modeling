%Stochastic model for biological clocks
%Circadian

function[S]=circadian(zeit,omega);

if (nargin<2), omega=5;
if (nargin<1), zeit=100;
end; end;

vs=0.5; kI=2;
vm=0.3; km=0.2;
vd=1.5; kd=0.1;
ks=2;
k1=0.2; k2=0.2;

M=0;
PC=0;
PN=0;
t=0;
ix=1;

while (t<zeit);
  S(ix,:)=[t M PN PC]; ix=ix+1;
  temp=(PN/(omega*kI))^4;
  w1=omega*vs/(1+temp);
  w2=vm*M/(km+M/omega);
  w3=ks*M;
  w4=vd*PC/(kd+PC/omega);
  w5=k1*PC;
  w6=k2*PN;
  

rate=w1+w2+w3+w4+w5+w6;

dt=-log(rand)/rate;
t=t+dt;

rate=rate*rand;
rate=rate-w1; if(rate<0), M=M+1; continue; end;
rate=rate-w2; if(rate<0), M=M-1; continue; end;
rate=rate-w3; if(rate<0), PC=PC+1; continue; end;
rate=rate-w4; if(rate<0), PC=PC-1; continue; end;
rate=rate-w5; if(rate<0), PC=PC-1; PN=PN+1; continue; end;
rate=rate-w6; if(rate<0), PC=PC+1; PN=PN-1; continue; end;
end;