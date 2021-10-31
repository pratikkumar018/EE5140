N=4
sigma2=N*(1-(pi*pi/16))
sigma=sqrt(sigma2)
lambda=(N*pi/4)*(N*pi/4)
a=sqrt(lambda)/sigma
Gamma_barldb= [8:2:40];
Gamma_barldb1=Gamma_barldb/10;
Gamma_barl=10.^Gamma_barldb1;
b1=sqrt(100)./(sqrt(Gamma_barl));
b=b1./sigma;
b=round(b*100)/100;
writematrix(b,'b.txt');

F1=[0.51707, 0.288695, 0.152161, 0.0811673, 0.045749, 0.0268879, 0.016934, 0.0113608, 0.00823404, 0.00592704, 0.00454716, 0.00348393, 0.00266403, 0.00204179, 0.00159039, 0.00129518, 0.0010036]


semilogy(Gamma_barldb,F1.^1,'k--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

%yticks(10^-10:1)
hold on

semilogy(Gamma_barldb,F1.^2,'g--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

%plot(gammabar3,10*log10(F1.^2),'r')



sigma2=N*(1-(pi*pi/16));
sigma=sqrt(sigma2);
lambda=(N*pi/4)*(N*pi/4);

e1=exp(-lambda/(2*sigma2));

e=20;


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




semilogy(Gamma_barldb,F1.^1,'r--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

%yticks(10^-10:1)
hold on

semilogy(Gamma_barldb,F1.^2,'b--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;
legend("L=1,exact","L=2,exact","L=1,asymp","L=2, asymp");
xlabel("Gamma bar (dB)")
ylabel("Outage Probability")
title("Exact & Asymptotic Analysis NCCS");
