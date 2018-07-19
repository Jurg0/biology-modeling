% lorenzRun.m

% Anfangsbedingungen
T=[0:0.01:20];
x0=[1 1 1];

% Ausführen
x=lsode('lorenz',x0,T);
plot(T,x)