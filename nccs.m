N=5
sigma2=N*(1-(pi*pi/16))
sigma=sqrt(sigma2)
lambda=(N*pi/4)*(N*pi/4)
a=sqrt(lambda)/sigma
gammabar2=[20:50:1000]
b1=sqrt(100)./(sqrt(gammabar2))
b=b1./sigma
b=round(b*100)/100
writematrix(b,'b.txt')
l=1
F1=[0.111798, 0.0239117, 0.014505, 0.0107446, 0.0090237, 0.00774038, 0.00680087, 0.00635744, 0.00572249, 0.00531793, 0.00512093, 0.00473692, 0.00454967, 0.00436545, 0.00418415, 0.00400565, 0.00382984, 0.00365662, 0.00365662, 0.00348587]
%FL=F1.^l
gammabar3=10*log10(gammabar2)

%plot(gammabar3,10*log10(F1.^1),'g')
semilogy(gammabar3,F1.^1,'k--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

%yticks(10^-10:1)
hold on

semilogy(gammabar3,F1.^2,'g--','LineWidth',1.3,'MarkerFaceColor','auto');grid on;hold on;

%plot(gammabar3,10*log10(F1.^2),'r')

legend("L=1","L=2");
xlabel("Gamma bar (dB)")
ylabel("Outage Probability")
title("Analysis NCCS");

