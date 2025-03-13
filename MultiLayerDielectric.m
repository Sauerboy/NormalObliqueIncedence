er1=1;
er2=9;
er3=4;
v_p=physconst('LightSpeed')/sqrt(er2);
eta0=120*pi; % Impedance of free space in ohms
f=50e6;
lambda=v_p/f;
d=1.2;
B=2*pi/lambda;

%Nonmagnetic Media
eta1=eta0/sqrt(er1);
eta2=eta0/sqrt(er2);
eta3=eta0/sqrt(er3);

t=tan(B*d);
eta_in=eta2*(eta3+j*t*eta2)/(eta2+j*t*eta3);
gamma=(eta_in-eta1)/(eta_in+eta1);
R=abs(gamma)^2;
