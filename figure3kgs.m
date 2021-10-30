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

semilogy(gammabar3,F.^2,'b--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

semilogy(gammabar3,F.^3,'m--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

semilogy(gammabar3,F.^4,'r--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;




xlabel("Gamma bar (dB)")
ylabel("Outage Probability")

legend("Analysis L=2","Analysis L=3","Analysis L=4" )
title("Outage probability for different combinations of L")



