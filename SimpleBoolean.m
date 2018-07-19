

K=10;

A_table=[1 0];
B_table=[1 1 1 0];
C_table=[1 0 0 0];

x=[1 0 1];

for i=1:K;
A=x(i,1);
B=x(i,2);
C=x(i,3);

A_ix=A+1;
B_ix=2*A+B+1;
C_ix=2*A+B+1;

A_neu=A_table(A_ix);
B_neu=B_table(B_ix);
C_neu=C_table(C_ix);

x(i+1,:)=[A_neu B_neu C_neu];
end;

x