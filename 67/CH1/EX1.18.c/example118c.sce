//Example 1.18c
clc;
t0=2;
T=10;
for t=1:T
    x(t)=t;
    y(t)=x(t)*cos(200*%pi*t);
end
inputshift=x(T-t0);
outputshift=y(T-t0);
if(inputshift==outputshift)
    disp('THE GIVEN SYSTEM IS TIME INVARIANT')
else
    disp('THE GIVEN SYSTEM IS TIME VARIANT');
end