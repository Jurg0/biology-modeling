%Tyson cell cycle model
%Trolling

function[dSdt]=TysonTroll(S,t);

u=S(1);
v=S(2);

k1=0.015;
k4=180;
k4s=0.018;
k6=2*0.5*sin(2*pi*t/116);

a=k4s/k4;

dSdt(1,1)=k4*(v-u)*(a+u^2)-k6*u;
dSdt(2,1)=k1-k6*u;

endfunction;