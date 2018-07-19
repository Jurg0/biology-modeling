% Models of signal transduction
% covalent modification cycles
% Stimulus response curves

K=1;
A=[0:0.01:10];
P=A./(K+A);
plot(A,P);

hold all;
K=0.1;
A=[0:0.01:10];
P=A./(K+A);
plot(A,P);

K=10;
A=[0:0.01:10];
P=A./(K+A);
plot(A,P);
legend('K=1','K=0.1','K=10');
title('Stimulus response curve');
hold off