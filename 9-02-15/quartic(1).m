function [ root ] = quartic(a, b, c, d, e)
%9-02-2015
%   Function for the roots of a quartic function
%   ax^4+bx^3+cx^2+dx+e=0
if nargin<5
    'This program is not designed to find the roots of polynominals below the 4th degree'
elseif nargin==5
    discriminate=((256*(a.^3)*(e.^3))-(192*(a.^2)*b*d*(e.^2))-(128*(a.^2)*(c.^2)*(e.^2))+(144*(1.^2)*c*(d.^2)*e)-(27*(a.^2)*(d.^4))+(144*a*(b.^2)*c*(e.^2))-(6*a*(b.^2)*(d.^2)*e)-(80*a*b*(c.^2)*d*e)+(18*a*b*c*(d.^3))+(16*a*(c^4)*e)-(4*a*(c.^3)*(d.^2))-(27*(b.^4)*(e.^2))+(18*(b.^3)*c*d*e)-(4*(b.^3)*(d.^3))-(4*(b.^2)*(c.^3)*e)+((b.^2)*(c.^2)*(d.^2)));
    D0=((c.^2)-(3*b*d)+(12*a*e));
    D1=((2*(c.^3))-(9*b*c*d)+(27*(b.^2)*e)+(27*a*(d.^2))-(72*a*c*e));
    F1=(-27)*(discriminate);
    p=((8*a*c-(3*(b.^2)))/(8*(a.^2)));
    q=(((b.^3)-(4*a*b*c)+(8*(a.^2)*d))/(8*(a.^2)));
    Q=((((D1+((F1).^(1/2))))/2).^(1/3));
    S=(1/2)*(((-(2/3)*p)+((1/(3*a))*(Q+((D0)/Q)))).^(1/2));
    r1=(-b/(4*a))-S+((.5)*(((-4*(S.^2))-(2*p)+(q/S)).^(1/2)));
    r2=(-b/(4*a))-S-((.5)*(((-4*(S.^2))-(2*p)+(q/S)).^(1/2)));
    r3=(-b/(4*a))+S+((.5)*(((-4*(S.^2))-(2*p)-(q/S)).^(1/2)));
    r4=(-b/(4*a))+S-((.5)*(((-4*(S.^2))-(2*p)-(q/S)).^(1/2)));
    root=[r1 r2 r3 r4];
else nargin>5
    'This program is not designed to find the roots of polynominals above the 4th degree'
end