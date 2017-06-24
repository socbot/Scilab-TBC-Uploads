clear;
clc;
V_t=600;
n_m=1500;
w_m=2*%pi*n_m/60;
I_a=80;
r_a=1;
K_m=(V_t-I_a*r_a)/(w_m);
V_s=400;
V_m=sqrt(2)*V_s;
disp("for firing angle=45deg and speed=1200rpm");
a=45;
n_m=1200;
w_m=2*%pi*n_m/60;
I_a=(3*V_m*(1+cosd(a))/(2*%pi)-K_m*w_m)/r_a;
I_sr=I_a*sqrt(2/3);    printf("rms value of source current=%.3f A",I_sr);
printf("\nrms value of thyristor current=%.3f A",I_a*sqrt(1/3));
printf("\navg value of thyristor current=%.2f A",I_a*(1/3));
pf=(3/(2*%pi)*(1+cosd(a)));    printf("\ninput power factor=%.3f",pf);

disp("for firing angle=90deg and speed=700rpm");
a=90;
n_m=700;
w_m=2*%pi*n_m/60;
I_a=(3*V_m*(1+cosd(a))/(2*%pi)-K_m*w_m)/r_a;
I_sr=I_a*sqrt(90/180);    printf("rms value of source current=%.3f A",I_sr);
printf("\nrms value of thyristor current=%.3f A",I_a*sqrt(90/360));
printf("\navg value of thyristor current=%.3f A",I_a*(1/3));
pf=(sqrt(6)/(2*%pi)*(1+cosd(a)))*sqrt(180/(180-a));    printf("\ninput power factor=%.4f",pf);