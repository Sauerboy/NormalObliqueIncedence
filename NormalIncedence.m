%Calculations for normal incedence
u0=1.257e-6; % in H/m
e0=8.854e-12; % in F/m

eta0=120*pi; % Impedance of free space in ohms
E=30; % Electric field in V/m
f=50e6;
w=2*pi*f;
sigma=2.78e-3;

er1=1; % reletive permittivity of medium 1
er2=1; % reletive permittivity of medium 2
ur2=1;
eta1=eta0/sqrt(er1);
u2=ur2*u0;
e2=er2*e0;
eta2=sqrt(u2/e2)/sqrt(1-j*sigma/(w*e2));

gamma=(eta2-eta1)/(eta2+eta1); 
tau=2*eta2/(eta2+eta1);
VSWR=(1+abs(gamma))/(1-abs(gamma));
R=abs(gamma)^2;
T=abs(tau)^2*eta1/eta2;
S_i=abs(E)^2/(2*eta1);
S_r=S_i*R;
S_t=S_i*T;
