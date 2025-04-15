%Calculations for parallel incedence

eta0=120*pi; % Impedance of free space in ohms
E=20; % Electric field in V/m
A=1; % Area in m^2

%Nonmagnetic Media
er1=1; % reletive permittivity of medium 1
er2=2.6; % reletive permittivity of medium 2
n1=sqrt(er1); % index of refraction of medium 1
n2=sqrt(er2); % index of refraction of medium 2
eta1=eta0/n1;
eta2=eta0/n2;
theta_i=50; % angle of incedence in degrees
theta_t=asind(sind(theta_i)*n1/n2); % angle of transmission in degrees

gamma_par=(eta2*cosd(theta_t)-eta1*cosd(theta_i))/(eta2*cosd(theta_t)+eta1*cosd(theta_i)); % parallel reflection coefficient
tau_par=2*eta2*cosd(theta_i)/(eta2*cosd(theta_t)+eta1*cosd(theta_i)); % parallel transmission coefficient
sanityCheck=(1+gamma_par)*cosd(theta_i)/cosd(theta_t) == tau_par;
R_par=abs(gamma_par)^2; % Reflectivity
T_par=abs(tau_par)^2*eta1*cosd(theta_t)/(eta2*cosd(theta_i)); % Transmissivity
S_i=abs(E)^2/(2*eta1); % Average incedent power density in W/m^2
P_i=S_i*cosd(theta_i)* A; % Average incedent power in W
P_r=P_i*R_par; % Average incedent in W
P_t=P_i*T_par; % Average incedent in W

