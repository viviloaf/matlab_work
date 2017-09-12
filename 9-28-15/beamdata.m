function [ V ] = beamdata( L, P, a )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%L=5;
%P=30;
%a=3;
x=(0:.5:L);
E=30.*(10^6);
I=.0256;
b=L-a;
V=zeros(x:length(a));

lga=(x<a);
lgb=(0<=x);
lgc=(lga==lgb);

for q=1:length(x);
    if (x(q)<=a);
        i=((P.*b)/(6.*E.*I.*L));
        j=((((-L.^2)+(b.^2)).*x(q))+(x(q).^3));
        V(q)=i.*j;
    else
        j=((((-L.^2)+(b.^2)).*x(q))+(x(q).^3));
        k=(((L./b)).*((x(q)-a).^3));
        V(q)=(i.*(j-k));
    end
end
plot(x, V);
save name V
%save('filename','variable');