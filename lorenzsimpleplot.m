% lorenzRun.m

% Anfangsbedingungen
T=[0:0.01:20];
x0=[1 1 1];

% Ausf�hren
x=lsode('lorenz',x0,T);
plot(T,x)