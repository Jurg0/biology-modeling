% CellAutoSimpler.m

function [x]=CellAutoSimpler(N,K);

if nargin==0;
K=150;N=100;
end;

RULES=[0 1 0 1 1 0 1 0];

x=zeros(K,N);
x(1,floor(N/2))=1;

for i=1:K
x_idx=[x(i,N) x(i,1:N) x(i,1)];
index=x_idx(1:N)*4+2*x_idx(2:N+1)+x_idx(3:N+2);
x(i+1,:)=RULES(index+1);
end;

spy(x)
% zum Anzeigen: x=CellAutoSimpler(200,100)