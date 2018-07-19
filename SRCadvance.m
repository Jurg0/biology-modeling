P=[0.001:0.005:0.999];

Ptot=1;
K=1;
A=P.*(K+Ptot-P)./((K+P).*(Ptot-P));
plot(A,P);

hold all;
K=0.01;
A=P.*(K+Ptot-P)./((K+P).*(Ptot-P));
plot(A,P);

P=[0.001:0.01:1.999];
Ptot=2;
K=1;
A=P.*(K+Ptot-P)./((K+P).*(Ptot-P));
plot(A,P);

K=0.01;
A=P.*(K+Ptot-P)./((K+P).*(Ptot-P));
plot(A,P);

P=[0.001:0.01:3.999];
Ptot=4;
K=1;
A=P.*(K+Ptot-P)./((K+P).*(Ptot-P));
plot(A,P);

K=0.01;
A=P.*(K+Ptot-P)./((K+P).*(Ptot-P));
plot(A,P);

xlabel('A');
ylabel('P+')
hold off;