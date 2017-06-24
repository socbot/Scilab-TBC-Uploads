//Problem 19.02: A star-connected load consists of three identical coils each of resistance 30 

//initializing the variables:
R = 30; // in ohms
L = 0.1273; // in Henry
Ip = 5.08; // in Amperes
f = 50; // in Hz

//calculation:
XL = 2*%pi*f*L
Zp = (R*R + XL*XL)^0.5
Il = Ip
Vp = Ip*Zp
Vl = Vp*(3^0.5)

printf("\n\n Result \n\n")
printf("\n (a)line voltage is %.0f V",Vl)