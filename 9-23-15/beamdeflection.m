function [ V ] = beamdeflection( L, P, a )
%Beam Deflection
%   Data from data sheet
%x=data(:,1);
%L=data(:,2);
%P=data(:,3);
%a=data(:,4);
%E=data(:,5);
%I=data(:,6);
%b=L-a;

%L=5;
%P=30;
%a=3;
x=(0:.2:L);
E=30.*(10^6);
I=.0256;
b=L-a;
V=zeros(x:length(a));
%if (0<=x) & (x<=a);
%    i=((P.*b.*x)./(6.*e.*I.*L));
%    j=((L.^2-x.^2-b.^2));
%    V=i.*j;
%else 
%    i=((P.*b)./(6.*E.*I.*L));
%    j=((L./b).*((x-a).^3));
%    k=((L.^2-b.^2).*(x-x.^3));
%    V=i.*(j+k);
%la=(0<=x);
%lb=(x<=a);
%lc=la==lb;   
%slowest approach
%for i=a:length(lc)
 %   if lc(i);
  %      V=i.*j;
   % else
    %end
%other approach
for q=1:length(x);
    if (x(q)<=a);
        i=((P.*b)/(6.*E.*I.*L));
    j=((((-L.^2)+(b.^2)).*x(q))+(x(q).^3));
    k=(((L./b)).*((x(q)-a).^3));
        V(q)=i.*j;
    else
        j=((((-L.^2)+(b.^2)).*x(q))+(x(q).^3));
    k=(((L./b)).*((x(q)-a).^3));
        V(q)=(i.*(j-k));
        plot(x, V);
    end
end
%if (0<=x) & (x<=a);
%    V=i.*j;  
%else
%    V=i.*(j-k);
%fix the program for monday
%re