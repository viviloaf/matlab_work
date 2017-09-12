function [ root ] = cubic( a, b, c, d )
%Cubic Root Solver
%   Given in terms of ax^3+bx^2+cx+d=0
%   a cannot equal 0
%   when set to 0, the cubic function has 3 real roots
if a==0;
    'a cannot equal 0, there are no roots for the cubic'
elseif nargin==1
    b=0;
    c=0;
    d=0;
    discriminant=((18*a*b*c*d)-(4*b.^3*d)+(b.^2*c.^2)-(4*a*c.^3)-(27*a.^2*d.^2));
    Q1=(2*b.^3)-(9*a*b*c)+((27*a.^2*d));
    Q2=(((-27*a.^2*(discriminant)).^(1/2)));
    C1=((((Q1)+(Q2))/2).^(1/3));
    U1=1;
    U2=((-1+1i*sqrt(3))/2);
    U3=((-1-1i*sqrt(3))/2);
    D1=(b.^2-(3*a*c));
    r1=(-(1/(3*a)))*((b)+((U1)*(C1))+((D1)/((U1)*(C1))));
    r2=(-(1/(3*a)))*((b)+((U2)*(C1))+((D1)/((U2)*(C1))));
    r3=(-(1/(3*a)))*((b)+((U3)*(C1))+((D1)/((U3)*(C1))));
    root=[r1, r2, r3];
elseif nargin==2
    c=0;
    d-0;
    discriminant=((18*a*b*c*d)-(4*b.^3*d)+(b.^2*c.^2)-(4*a*c.^3)-(27*a.^2*d.^2));
    Q1=(2*b.^3)-(9*a*b*c)+((27*a.^2*d));
    Q2=(((-27*a.^2*(discriminant)).^(1/2)));
    C1=((((Q1)+(Q2))/2).^(1/3));
    U1=1;
    U2=((-1+1i*sqrt(3))/2);
    U3=((-1-1i*sqrt(3))/2);
    D1=(b.^2-(3*a*c));
    r1=(-(1/(3*a)))*((b)+((U1)*(C1))+((D1)/((U1)*(C1))));
    r2=(-(1/(3*a)))*((b)+((U2)*(C1))+((D1)/((U2)*(C1))));
    r3=(-(1/(3*a)))*((b)+((U3)*(C1))+((D1)/((U3)*(C1))));
    root=[r1, r2, r3];
elseif nargin==3
    d=0;
    discriminant=((18*a*b*c*d)-(4*b.^3*d)+(b.^2*c.^2)-(4*a*c.^3)-(27*a.^2*d.^2));
    Q1=(2*b.^3)-(9*a*b*c)+((27*a.^2*d));
    Q2=(((-27*a.^2*(discriminant)).^(1/2)));
    C1=((((Q1)+(Q2))/2).^(1/3));
    U1=1;
    U2=((-1+1i*sqrt(3))/2);
    U3=((-1-1i*sqrt(3))/2);
    D1=(b.^2-(3*a*c));
    r1=(-(1/(3*a)))*((b)+((U1)*(C1))+((D1)/((U1)*(C1))));
    r2=(-(1/(3*a)))*((b)+((U2)*(C1))+((D1)/((U2)*(C1))));
    r3=(-(1/(3*a)))*((b)+((U3)*(C1))+((D1)/((U3)*(C1))));
    root=[r1, r2, r3];
else
    %this portion computes the 3 roots of the cubic equation
    discriminant=((18*a*b*c*d)-(4*b.^3*d)+(b.^2*c.^2)-(4*a*c.^3)-(27*a.^2*d.^2));
    Q1=(2*b.^3)-(9*a*b*c)+((27*a.^2*d));
    Q2=(((-27*a.^2*(discriminant)).^(1/2)));
    C1=((((Q1)+(Q2))/2).^(1/3));
    U1=1;
    U2=((-1+1i*sqrt(3))/2);
    U3=((-1-1i*sqrt(3))/2);
    D1=(b.^2-(3*a*c));
    r1=(-(1/(3*a)))*((b)+((U1)*(C1))+((D1)/((U1)*(C1))));
    r2=(-(1/(3*a)))*((b)+((U2)*(C1))+((D1)/((U2)*(C1))));
    r3=(-(1/(3*a)))*((b)+((U3)*(C1))+((D1)/((U3)*(C1))));
    root=[r1, r2, r3];
end

