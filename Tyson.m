%Tyson cell cycle model

function[dSdt]=Tyson(S,t);

u=S(1);
v=S(2);

k1=0.015;
k4=180;
k4s=0.018;
k6=0.3;

if(t>121),k6=1; endif;
if(t>284),k6=2; endif;
if(t>397),k6=29; endif;
if(t>450),k6=0.4; endif;

a=k4s/k4;

dSdt(1,1)=k4*(v-u)*(a+u^2)-k6*u;
dSdt(2,1)=k1-k6*u;

endfunction;