                   //EXAMPLE 2-62        PG NO-105-106
Z1=24+%i*18;
Z2=24-%i*10;
Z3=2-%i*0.148;
R1=24;
R2=24;
R3=32;
R4=16;
V=2;
v1=128.3;
I=2;
I3=32+%i*24;
I4=16-%i*30;
Z=Z1+Z2;
disp('i)  IMPEDANCE (Z) is  in polar form   =  '+string (Z) +'  ohms ');
I1=[Z2/(Z1+Z2)]*Z3;
disp('i)  CURRENT (I1) is  in polar form   =  '+string (I1) +'  ohms ');
I2=[Z1/(Z1+Z2)]*Z3;
disp('i)  CURRENT (I2) is  in polar form   =  '+string (I2) +'  ohms ');
P1=I1*I1*R1;
disp('i)  POWER (P1) is  in polar form   =  '+string (P1) +'  W ');
P2=I2*I2*R2;
disp('i)  POWER (P2) is  in polar form   =  '+string (P2) +'  W ');
P3=V*V*R3;
disp('i)  POWER (P3) is  in polar form   =  '+string (P3) +'  W ');
P4=V*V*R4;
disp('i)  POWER (P4) is  in polar form   =  '+string (P4) +'  W ');
P=P1+P2+P3+P4;
disp('i)  TOTAL POWER (P) is  in polar form   =  '+string (P) +'  W ');
V1=I1*Z1;
disp('i)  VOLTAGE (V1) is  in polar form   =  '+string (V1) +'  V ');
V2=V1;
disp('i)  VOLTAGE (V2) is  in polar form   =  '+string (V2) +'  V ');
V3=I3*Z3;
disp('i)  VOLTAGE (V3) is  in polar form   =  '+string (V3) +'  V ');
V4=I4*Z3;
disp('i)  VOLTAGE (V4) is  in polar form   =  '+string (V4) +'  V ');
V=V1+V4+V3;
disp('i%)  VOLTAGE (V) is  in polar form   =  '+string (V) +'  V ');
S=v1*I;
disp('i)  Apparent Power (S) is     =  '+string (S) +'  VA ');
Q=S*0.0726;
disp('i) Reactive Power (Q) is     =  '+string (Q) +'  Var ');