kT = 26*10^-3; //in eV
t = 10^-6;
q = 1.6*10^-19;
A = 10^-3; //in square cm
ni = 1.5*10^10;
eE = 3.2*10^4;
Igr0 = q*ni*A*%pi*kT/(2*t*eE);
disp(Igr0,"prefactor of the generation-recombination current (in Ampere) =")
V1 = 0.2;
Igr1 = Igr0*(exp(0.5*V1/kT)-1);
disp(Igr1,"generation-recombination current (in A) at bias of 0.2 V =")
V2 = 0.6;
Igr2 = Igr0*(exp(0.5*V2/kT)-1);
disp(Igr2,"generation-recombination current (in A) at bias of 0.6 V =")