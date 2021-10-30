Gamma_barldb= [8:2:24];
Gamma_barldb1=Gamma_barldb/10;
Gamma_barl=10.^Gamma_barldb1;
N=20;
L=5;


Npt=100000
snr=zeros(Npt,length(Gamma_barl));

    snr1=zeros(1,length(Gamma_barl));


for k=1:Npt
    for i=1:L
            alpha= raylrnd(1/sqrt(2),1,N);
            beta= raylrnd(1/sqrt(2),1,N);    
            Al_Square(i)= dot(alpha,beta)^2;
            Gamma_l(i,:)=Al_Square(i)*Gamma_barl;

    end

    i=1;
    for j=1:length(Gamma_barl)
       snr(k,i)= max(Gamma_l(:,j));
       i=i+1;

    end
    
end

avg_snr=mean(snr);

logsnr20=log2(1+avg_snr)


Gamma_barldb= [8:2:24];
Gamma_barldb1=Gamma_barldb/10;
Gamma_barl=10.^Gamma_barldb1;
N=50;
L=5;


Npt=100000
snr=zeros(Npt,length(Gamma_barl));

    snr1=zeros(1,length(Gamma_barl));


for k=1:Npt
    for i=1:L
            alpha= raylrnd(1/sqrt(2),1,N);
            beta= raylrnd(1/sqrt(2),1,N);    
            Al_Square(i)= dot(alpha,beta)^2;
            Gamma_l(i,:)=Al_Square(i)*Gamma_barl;

    end

    i=1;
    for j=1:length(Gamma_barl)
       snr(k,i)= max(Gamma_l(:,j));
       i=i+1;

    end
    
end

avg_snr=mean(snr);

logsnr50=log2(1+avg_snr)



Gamma_barldb= [8:2:24];
Gamma_barldb1=Gamma_barldb/10;
Gamma_barl=10.^Gamma_barldb1;
N=100;
L=5;


Npt=100000
snr=zeros(Npt,length(Gamma_barl));

    snr1=zeros(1,length(Gamma_barl));


for k=1:Npt
    for i=1:L
            alpha= raylrnd(1/sqrt(2),1,N);
            beta= raylrnd(1/sqrt(2),1,N);    
            Al_Square(i)= dot(alpha,beta)^2;
            Gamma_l(i,:)=Al_Square(i)*Gamma_barl;

    end

    i=1;
    for j=1:length(Gamma_barl)
       snr(k,i)= max(Gamma_l(:,j));
       i=i+1;

    end
    
end

avg_snr=mean(snr);

logsnr100=log2(1+avg_snr)

plot(Gamma_barldb,logsnr20,'k-*','MarkerFaceColor','auto');grid on;hold on;
xlabel("Gamma bar (dB)")
ylabel("Average Sum Rate")

plot(Gamma_barldb,logsnr50,'g-*','MarkerFaceColor','auto');grid on;hold on;
plot(Gamma_barldb,logsnr100,'r-*','MarkerFaceColor','auto');grid on;hold on;


legend("N=20","N=50","N=100")
title("Average capacity for different values of N, L = 5")








