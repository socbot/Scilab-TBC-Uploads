clc;
R=20*10**3;
I=(R-0.7)/R;
disp('mA',I*1,"I=");
rj=50;
rB=1;
re=rB+rj;
R1=(R*re)/(re+R);
disp(R1);
V=10*(re/(re+1000));
disp('mV',V*1,"V=");
i=0:0.01:6*%pi;
plot(sin(i));