%Run DSBmodel: RunDSB

t=[0:1:30];
x0=rand(5,1);

x=lsode('DSBmodel',x0,t);

plot(t,x)