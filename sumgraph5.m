v=1/3
L=[2:2:20]
N=20
theta=16*v/(16-pi*pi)
cl10=log2(log(L))+log2(1/theta)+log2(100)+log2(10)
plot(L,cl10,'g')
%yticks(10^-10:1)
hold on

cl20=log2(log(L))+log2(1/theta)+log2(100)+log2(20)

plot(L,cl20,'r')
ylim([0 15])

xlabel("L")
ylabel("Average Sum Rate")
legend("N=10","N=20")
title("Average capacity vs L")







