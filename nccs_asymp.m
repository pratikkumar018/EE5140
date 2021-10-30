N=5;
sigma2=N*(1-(pi*pi/16));
sigma=sqrt(sigma2);
lambda=(N*pi/4)*(N*pi/4);

e1=exp(-lambda/(2*sigma2));

e=20;
Gamma_barldb= [8:2:24];
Gamma_barldb1=Gamma_barldb/10;
Gamma_barl=10.^Gamma_barldb1;


b1=100/(2*sigma2);
b=b1./Gamma_barl;
o=0;
for eta=0:e
    a1=(-1)^eta;
    a2=factorial(eta+e-1);
    a3=factorial(e-eta)*factorial(eta);
    a4=e^(1-2*eta);
    a5=gamma(eta+1/2);
    f1=a1*a2*a4/(a3*a5);
    a6=(1i)^(2*eta);
    a7=1/(2*sigma2);
    a8=a7^eta;
    a9=lambda^eta;
    f2=f1*a6*a7*a8*a9;
    
    f3=gammainc(b,eta+1/2);
    disp(f3)
    
    o=o+f2*f3;
end

F1=e1*o;




semilogy(Gamma_barldb,F1.^1,'k--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

%yticks(10^-10:1)
hold on

semilogy(Gamma_barldb,F1.^2,'g--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;
legend("L=1","L=2");
xlabel("Gamma bar (dB)")
ylabel("Outage Probability")
title("Asymptotic NCCS");

