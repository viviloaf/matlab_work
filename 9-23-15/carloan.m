function [ PMT ] = carloan( Principal, APR, Y )
%Car Loan Calculator
%   Detailed explanation goes here

NM=Y.*12;
IPM=(APR)/(12.*100);
PMT=((Principal.*IPM)/(1-((1+IPM).^(-NM))));
%disp(['Monthy Car Loan based on $', num2str(Principal)]);disp(['with',num2str(APR)]);disp(['% over']);disp([num2str(Y)]);disp(['years is $']);disp([num2str(PMT),'_monthly']);
end
