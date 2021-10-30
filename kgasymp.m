k=2
m=3
e2=k*m/100
e=sqrt(e2)


gammabar2=[10:50:1000]
gamma1=100

p1=4*(e^(k+m))
gammak=gamma(k)
gammam=gamma(m)
p2=p1/(gammak*gammam*(k+m))


gammadiv=gamma1./gammabar2

gammadivpow=gammadiv.^((k+m)/2)

F=p2*gammadivpow




gammabar3=10*log10(gammabar2)

semilogy(gammabar3,F.^1,'k--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

hold on

semilogy(gammabar3,F.^2,'g--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;
legend("L=1","L=2");
xlabel("Gamma bar (dB)")
ylabel("Outage Probability")
title("Asymptotic KG");