k=2
m=2
e2=k*m/100
gammabar2=[10:50:1000]
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

legend("L=1","L=2");
xlabel("Gamma bar (dB)")
ylabel("Outage Probability")
title("Analysis KG");