clear;
clc;
X1=6.6*%i;
X2=6.3*%i;
X0=12.6*%i;
r=37.5e6;
v=33e3;
e=1;
zb=v^2/r;
x1=X1/zb;
x2=X2/zb;
x0=X0/zb;
x1g=.18*%i;
x2g=.12*%i;
x0g=.1*%i;
x1=x1+x1g;
x2=x2+x2g;
x0=x0+x0g;
ia=3*e/(x1+x2+x0);
ia1=ia/3;
a=1*%e^(%i*(120*%pi/180));
b=a^2;
ibase=r/(sqrt(3)*v);
ian=ia*ibase;
printf("fault current=%djAmp",imag(ian));
va=e-(ia1*x1g);
vb=-ia1*x2g;
vc=-ia1*x0g;
va0=(va+vb+vc);
va1=(va+(b*vb)+(a*vc));
va2=(va+(a*vb)+(b*vc));
v=v/sqrt(3);
va0=va0*v;
va1=va1*v;
va2=va2*v;
va0r=real(va0);
va0i=imag(va0);
va0m=sqrt((va0r^2)+(va0i^2));
va0a=atand(va0i/va0r);
va1r=real(va1);
va1i=imag(va1);
va1m=sqrt((va1r^2)+(va1i^2));
va1a=atand(va1i/va1r)-120;
va2r=real(va2);
va2i=imag(va2);
va2m=sqrt((va2r^2)+(va2i^2));
va2a=atand(va2i/va2r)+120;
mprintf("\nthe voltage levels are \n va=%f+j%f V \tor\t %d/_%d kV",va0r/1e3,va0i/1e3,va0m/1e3,va0a);
mprintf("\n vb=%f+j(%f) kV \tor\t %d/_%d kV",va1r/1e3,va1i/1e3,va1m/1e3,va1a);
mprintf("\n vc=%f+j(%f) kV \tor\t %d/_%d kV",va2r/1e3,va2i/1e3,va2m/1e3,va2a);