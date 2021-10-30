

Gamma_barl=100;
N=10;
L=[2:2:20];


Npt=100000;

for j=1:Npt
    for m=1:length(L) 
        Gamma_l=0;
        for i=1:L(m)
                alpha= raylrnd(1/sqrt(2),1,N);
                beta= raylrnd(1/sqrt(2),1,N);    
                Al_Square= dot(alpha,beta)^2;
                Gamma_l(i)=Al_Square*Gamma_barl;
                

        end
        
        
        snr1=max(Gamma_l);
        snr2(j,m)=snr1;

    end
end

avg_snr=mean(snr2);

logsnr10=log2(1+avg_snr);
plot(L,logsnr10,'k-*','MarkerFaceColor','auto');grid on;hold on;
xlabel("L")
ylabel("Average Sum Rate")

Gamma_barl=100;
N=20;
L=[2:2:20];


Npt=100000;

for j=1:Npt
    for m=1:length(L) 
        Gamma_l=0;
        for i=1:L(m)
                alpha= raylrnd(1/sqrt(2),1,N);
                beta= raylrnd(1/sqrt(2),1,N);    
                Al_Square= dot(alpha,beta)^2;
                Gamma_l(i)=Al_Square*Gamma_barl;
                

        end
        
        
        snr1=max(Gamma_l);
        snr2(j,m)=snr1;

    end
end

avg_snr=mean(snr2);

logsnr20=log2(1+avg_snr);
plot(L,logsnr20,'g-*','MarkerFaceColor','auto');grid on;hold on;
xlabel("L")
ylabel("Average Sum Rate")
legend("N=10","N=20")
title("Average capacity vs L")

    
    

   
    












