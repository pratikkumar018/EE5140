v=1/3
L=5
gammabar2=[-3:2:30]

N=20
theta=16*v/(16-pi*pi)
cl20=log2(log(L))+log2(1/theta)+log2(gammabar2)+log2(20)

gammabar3=10*log10(gammabar2)


plot(gammabar3,cl20,'g')
%yticks(10^-10:1)
hold on

cl50=log2(log(L))+log2(1/theta)+log2(gammabar2)+log2(50)
plot(gammabar3,cl50,'r')



cl100=log2(log(L))+log2(1/theta)+log2(gammabar2)+log2(100)
plot(gammabar3,cl100,'b')


ylim([0 16])

xlabel("Gamma bar (dB)")
ylabel("Average Sum Rate")
legend("N=20","N=50","N=100")
title("Average capacity for different values of N, L = 5")





