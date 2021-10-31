k=10
m=10
e2=k*m/200
gammabar2=[10:50:2000]
gamma1=100
z=e2*gamma1./gammabar2

a=[1]
b=[]
c=[k,m]
d=[0]



mg=meijerG(a,b,c,d,z)
gammak=gamma(k)
gammam=gamma(m)

F=mg/(gamma(k)*gammam)



gammabar3=10*log10(gammabar2)

semilogy(gammabar3,F.^1,'k--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

hold on

semilogy(gammabar3,F.^2,'g--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

xlabel("Gamma bar (dB)")
ylabel("Outage Probability")



e2=k*m/200
e=sqrt(e2)


gamma1=100

p1=4*(e^(k+m))
gammak=gamma(k)
gammam=gamma(m)
p2=p1/(gammak*gammam*(k+m))


gammadiv=gamma1./gammabar2

gammadivpow=gammadiv.^((k+m)/2)

F=p2*gammadivpow




gammabar3=10*log10(gammabar2)

semilogy(gammabar3,F.^1,'r--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

hold on

semilogy(gammabar3,F.^2,'b--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;
legend("L=1 exact","L=2 exact","L=1 asymptotic","L=2 asymptotic");
xlabel("Gamma bar (dB)")
ylabel("Outage Probability")
title("Exact & Asymptotic Analysis KG");